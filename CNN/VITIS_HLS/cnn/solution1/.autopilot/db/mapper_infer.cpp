#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_infer_input_V_cap_bc;
static AESL_RUNTIME_BC __xlx_infer_input_V_size_Reader("../tv/stream_size/stream_size_in_infer_input_V.dat");
unsigned int ap_apatb_infer_output_V_cap_bc;
static AESL_RUNTIME_BC __xlx_infer_output_V_size_Reader("../tv/stream_size/stream_size_out_infer_output_V.dat");
extern "C" void infer(int*, float*);
extern "C" void apatb_infer_hw(volatile void * __xlx_apatb_param_infer_input, volatile void * __xlx_apatb_param_infer_output) {
  // collect __xlx_infer_input_tmp_vec
  unsigned __xlx_infer_input_V_tmp_Count = 0;
  unsigned __xlx_infer_input_V_read_Size = __xlx_infer_input_V_size_Reader.read_size();
  vector<int> __xlx_infer_input_tmp_vec;
  while (!((hls::stream<int>*)__xlx_apatb_param_infer_input)->empty() && __xlx_infer_input_V_tmp_Count < __xlx_infer_input_V_read_Size) {
    __xlx_infer_input_tmp_vec.push_back(((hls::stream<int>*)__xlx_apatb_param_infer_input)->read());
    __xlx_infer_input_V_tmp_Count++;
  }
  ap_apatb_infer_input_V_cap_bc = __xlx_infer_input_tmp_vec.size();
  // store input buffer
  int* __xlx_infer_input_input_buffer= new int[__xlx_infer_input_tmp_vec.size()];
  for (int i = 0; i < __xlx_infer_input_tmp_vec.size(); ++i) {
    __xlx_infer_input_input_buffer[i] = __xlx_infer_input_tmp_vec[i];
  }
  //Create input buffer for infer_output
  ap_apatb_infer_output_V_cap_bc = __xlx_infer_output_V_size_Reader.read_size();
  float* __xlx_infer_output_input_buffer= new float[ap_apatb_infer_output_V_cap_bc];
  // DUT call
  infer(__xlx_infer_input_input_buffer, __xlx_infer_output_input_buffer);
  for (unsigned i = 0; i <ap_apatb_infer_output_V_cap_bc; ++i)
    ((hls::stream<float>*)__xlx_apatb_param_infer_output)->write(__xlx_infer_output_input_buffer[i]);
}
