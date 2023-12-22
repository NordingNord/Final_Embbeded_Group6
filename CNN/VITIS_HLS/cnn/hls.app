<project xmlns="com.autoesl.autopilot.project" name="cnn" top="infer">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../src/hls/cnn_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../src/hls/testImage.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/hls/layerInfo.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/hls/cnn.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

