<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_A_L">
<frame x1="0" y1="0" x2="279.4" y2="215.9" columns="6" rows="5" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_A_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt; A Size , 8 1/2 x 11 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_A_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="172.72" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="texas">
<description>&lt;b&gt;Texas Instruments Devices&lt;/b&gt;&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="NDN0015A">
<pad name="1" x="0" y="0" drill="0.7" diameter="1.25"/>
<pad name="3" x="1.93" y="0" drill="0.7" diameter="1.25"/>
<pad name="5" x="3.86" y="0" drill="0.7" diameter="1.25"/>
<pad name="7" x="5.79" y="0" drill="0.7" diameter="1.25"/>
<pad name="9" x="7.72" y="0" drill="0.7" diameter="1.25"/>
<pad name="11" x="9.65" y="0" drill="0.7" diameter="1.25"/>
<pad name="13" x="13.51" y="0" drill="0.7" diameter="1.25"/>
<pad name="15" x="17.37" y="0" drill="0.7" diameter="1.25"/>
<pad name="2" x="0.965" y="2.54" drill="0.7" diameter="1.25"/>
<pad name="4" x="2.895" y="2.54" drill="0.7" diameter="1.25"/>
<pad name="6" x="4.825" y="2.54" drill="0.7" diameter="1.25"/>
<pad name="8" x="6.755" y="2.54" drill="0.7" diameter="1.25"/>
<pad name="10" x="8.685" y="2.54" drill="0.7" diameter="1.25"/>
<pad name="12" x="11.58" y="2.54" drill="0.7" diameter="1.25"/>
<pad name="14" x="15.44" y="2.54" drill="0.7" diameter="1.25"/>
<wire x1="-1.18459375" y1="4.961584375" x2="18.614284375" y2="4.96158125" width="0.127" layer="21"/>
<wire x1="-1.19216875" y1="-1.26885625" x2="18.606696875" y2="-1.280103125" width="0.127" layer="21"/>
<wire x1="-1.19216875" y1="-1.26885625" x2="-1.18459375" y2="4.961584375" width="0.127" layer="21"/>
<wire x1="18.606696875" y1="-1.280103125" x2="18.614284375" y2="4.96158125" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="LME49830">
<wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94"/>
<wire x1="38.1" y1="0" x2="38.1" y2="12.7" width="0.254" layer="94"/>
<wire x1="38.1" y1="12.7" x2="38.1" y2="17.78" width="0.254" layer="94"/>
<wire x1="38.1" y1="17.78" x2="38.1" y2="22.86" width="0.254" layer="94"/>
<wire x1="38.1" y1="22.86" x2="38.1" y2="33.02" width="0.254" layer="94"/>
<wire x1="38.1" y1="33.02" x2="38.1" y2="38.1" width="0.254" layer="94"/>
<wire x1="38.1" y1="38.1" x2="38.1" y2="48.26" width="0.254" layer="94"/>
<wire x1="38.1" y1="48.26" x2="38.1" y2="60.96" width="0.254" layer="94"/>
<wire x1="38.1" y1="60.96" x2="0" y2="60.96" width="0.254" layer="94"/>
<wire x1="0" y1="60.96" x2="0" y2="55.88" width="0.254" layer="94"/>
<pin name="MUTE" x="-5.08" y="55.88" length="middle" direction="in"/>
<pin name="IN-" x="-5.08" y="30.48" length="middle" direction="in"/>
<pin name="IN+" x="-5.08" y="25.4" length="middle" direction="in"/>
<pin name="GND" x="5.08" y="-5.08" length="middle" direction="pwr" rot="R90"/>
<pin name="-VEE" x="20.32" y="-5.08" length="middle" direction="pwr" rot="R90"/>
<pin name="+VCC" x="20.32" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="OSENSE" x="43.18" y="48.26" length="middle" direction="in" rot="R180"/>
<pin name="BIAS_P" x="43.18" y="33.02" length="middle" direction="pas" rot="R180"/>
<pin name="N_OUT" x="43.18" y="38.1" length="middle" direction="out" rot="R180"/>
<pin name="COMP" x="43.18" y="12.7" length="middle" direction="in" rot="R180"/>
<pin name="BIAS_M" x="43.18" y="22.86" length="middle" direction="pas" rot="R180"/>
<pin name="P_OUT" x="43.18" y="17.78" length="middle" direction="out" rot="R180"/>
<wire x1="0" y1="55.88" x2="0" y2="30.48" width="0.254" layer="94"/>
<wire x1="0" y1="30.48" x2="0" y2="25.4" width="0.254" layer="94"/>
<wire x1="0" y1="25.4" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="50.8" x2="12.7" y2="50.8" width="0.254" layer="94"/>
<wire x1="12.7" y1="50.8" x2="17.78" y2="50.8" width="0.254" layer="94"/>
<wire x1="17.78" y1="50.8" x2="17.78" y2="48.26" width="0.254" layer="94"/>
<wire x1="17.78" y1="48.26" x2="17.78" y2="45.72" width="0.254" layer="94"/>
<wire x1="17.78" y1="45.72" x2="12.7" y2="45.72" width="0.254" layer="94"/>
<wire x1="12.7" y1="45.72" x2="7.62" y2="45.72" width="0.254" layer="94"/>
<wire x1="7.62" y1="45.72" x2="7.62" y2="50.8" width="0.254" layer="94"/>
<wire x1="10.16" y1="38.1" x2="10.16" y2="30.48" width="0.254" layer="94"/>
<wire x1="10.16" y1="30.48" x2="10.16" y2="25.4" width="0.254" layer="94"/>
<wire x1="10.16" y1="25.4" x2="10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="17.78" x2="27.94" y2="27.94" width="0.254" layer="94"/>
<wire x1="27.94" y1="27.94" x2="10.16" y2="38.1" width="0.254" layer="94"/>
<wire x1="0" y1="55.88" x2="12.7" y2="55.88" width="0.254" layer="94"/>
<wire x1="12.7" y1="55.88" x2="12.7" y2="50.8" width="0.254" layer="94"/>
<wire x1="17.78" y1="48.26" x2="38.1" y2="48.26" width="0.254" layer="94"/>
<pin name="NC3" x="30.48" y="-5.08" length="middle" direction="out" rot="R90"/>
<pin name="NC2" x="33.02" y="-5.08" length="middle" direction="nc" rot="R90"/>
<wire x1="38.1" y1="33.02" x2="22.86" y2="33.02" width="0.254" layer="94"/>
<wire x1="22.86" y1="33.02" x2="21.487565625" y2="31.647565625" width="0.254" layer="94"/>
<wire x1="21.487565625" y1="31.647565625" x2="21.484725" y2="31.647565625" width="0.254" layer="94"/>
<wire x1="38.1" y1="38.1" x2="22.86" y2="38.1" width="0.254" layer="94"/>
<wire x1="22.86" y1="38.1" x2="18.2715625" y2="33.5115625" width="0.254" layer="94"/>
<wire x1="18.2715625" y1="33.5115625" x2="18.2715625" y2="33.497684375" width="0.254" layer="94"/>
<wire x1="38.1" y1="22.86" x2="22.86" y2="22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="22.86" x2="21.504453125" y2="24.215546875" width="0.254" layer="94"/>
<wire x1="21.504453125" y1="24.215546875" x2="21.504453125" y2="24.22805" width="0.254" layer="94"/>
<wire x1="38.1" y1="17.78" x2="22.86" y2="17.78" width="0.254" layer="94"/>
<wire x1="22.86" y1="17.78" x2="18.266" y2="22.374" width="0.254" layer="94"/>
<wire x1="18.266" y1="22.374" x2="18.266" y2="22.37590625" width="0.254" layer="94"/>
<wire x1="38.1" y1="12.7" x2="20.32" y2="12.7" width="0.254" layer="94"/>
<wire x1="20.32" y1="12.7" x2="13.4253625" y2="19.5946375" width="0.254" layer="94"/>
<wire x1="13.4253625" y1="19.5946375" x2="13.40005" y2="19.5946375" width="0.254" layer="94"/>
<wire x1="12.7" y1="45.72" x2="12.7" y2="43.18" width="0.254" layer="94"/>
<wire x1="12.7" y1="43.18" x2="17.78" y2="43.18" width="0.254" layer="94"/>
<wire x1="17.78" y1="43.18" x2="17.75083125" y2="33.8101375" width="0.254" layer="94"/>
<wire x1="0" y1="30.48" x2="10.16" y2="30.48" width="0.254" layer="94"/>
<wire x1="0" y1="25.4" x2="10.16" y2="25.4" width="0.254" layer="94"/>
<text x="11.684" y="29.718" size="1.778" layer="94">-</text>
<text x="11.684" y="24.638" size="1.778" layer="94">+</text>
<text x="0" y="68.58" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="63.5" size="1.778" layer="95">&gt;VALUE</text>
<text x="8.89" y="46.99" size="1.27" layer="95">Mute
Control</text>
<pin name="NC1" x="35.56" y="-5.08" length="middle" direction="nc" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LME49830" prefix="U">
<description>Mono High Fidelity 200V MOSFET Power Amplifier
+/-20V to +/-200V Power Supply</description>
<gates>
<gate name="G$1" symbol="LME49830" x="-17.78" y="-27.94"/>
</gates>
<devices>
<device name="" package="NDN0015A">
<connects>
<connect gate="G$1" pin="+VCC" pad="15"/>
<connect gate="G$1" pin="-VEE" pad="10"/>
<connect gate="G$1" pin="BIAS_M" pad="11"/>
<connect gate="G$1" pin="BIAS_P" pad="12"/>
<connect gate="G$1" pin="COMP" pad="6"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="IN+" pad="4"/>
<connect gate="G$1" pin="IN-" pad="5"/>
<connect gate="G$1" pin="MUTE" pad="2"/>
<connect gate="G$1" pin="NC1" pad="1"/>
<connect gate="G$1" pin="NC2" pad="7"/>
<connect gate="G$1" pin="NC3" pad="9"/>
<connect gate="G$1" pin="N_OUT" pad="14"/>
<connect gate="G$1" pin="OSENSE" pad="8"/>
<connect gate="G$1" pin="P_OUT" pad="13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Headers">
<packages>
<package name="1X7_100MIL">
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-1.3462" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" rot="R90"/>
<text x="-0.4064" y="2.4511" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<wire x1="-1.2954" y1="1.2319" x2="-1.2954" y2="-1.2573" width="0.1524" layer="21"/>
<wire x1="5.06894375" y1="1.276159375" x2="4.447225" y2="1.276159375" width="0.127" layer="21"/>
<pad name="4" x="7.62" y="0" drill="1.016" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.016" rot="R90"/>
<pad name="6" x="12.7" y="0" drill="1.016" rot="R90"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="6.35" y2="-0.635" width="0.127" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.127" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="-1.27" width="0.127" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="8.89" y2="-0.635" width="0.127" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="9.525" y2="-1.27" width="0.127" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="10.795" y2="-1.27" width="0.127" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="11.43" y2="-0.635" width="0.127" layer="21"/>
<wire x1="11.43" y1="-0.635" x2="12.065" y2="-1.27" width="0.127" layer="21"/>
<wire x1="12.065" y1="1.27" x2="11.43" y2="0.635" width="0.127" layer="21"/>
<wire x1="11.43" y1="0.635" x2="10.795" y2="1.27" width="0.127" layer="21"/>
<wire x1="10.795" y1="1.27" x2="9.525" y2="1.27" width="0.127" layer="21"/>
<wire x1="9.525" y1="1.27" x2="8.89" y2="0.635" width="0.127" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.255" y2="1.27" width="0.127" layer="21"/>
<wire x1="8.255" y1="1.27" x2="6.985" y2="1.27" width="0.127" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.127" layer="21"/>
<wire x1="6.35" y1="0.635" x2="5.715" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<pad name="7" x="15.24" y="0" drill="1.016" rot="R90"/>
<wire x1="12.065" y1="1.27" x2="13.335" y2="1.27" width="0.127" layer="21"/>
<wire x1="13.335" y1="1.27" x2="13.97" y2="0.635" width="0.127" layer="21"/>
<wire x1="13.97" y1="0.635" x2="14.605" y2="1.27" width="0.127" layer="21"/>
<wire x1="14.605" y1="1.27" x2="16.51" y2="1.27" width="0.127" layer="21"/>
<wire x1="16.51" y1="1.27" x2="16.51" y2="-1.27" width="0.127" layer="21"/>
<wire x1="16.51" y1="-1.27" x2="14.605" y2="-1.27" width="0.127" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.97" y2="-0.635" width="0.127" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="13.335" y2="-1.27" width="0.127" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.065" y2="-1.27" width="0.127" layer="21"/>
</package>
<package name="1X8_100MIL">
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-2.6162" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="square" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" rot="R90"/>
<pad name="3" x="3.81" y="0" drill="1.016" rot="R90"/>
<text x="-1.6764" y="2.4511" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<wire x1="-2.5654" y1="1.2319" x2="-2.5654" y2="-1.2573" width="0.1524" layer="21"/>
<wire x1="3.79894375" y1="1.276159375" x2="3.177225" y2="1.276159375" width="0.127" layer="21"/>
<pad name="4" x="6.35" y="0" drill="1.016" rot="R90"/>
<pad name="5" x="8.89" y="0" drill="1.016" rot="R90"/>
<pad name="6" x="11.43" y="0" drill="1.016" rot="R90"/>
<wire x1="3.175" y1="-1.27" x2="4.445" y2="-1.27" width="0.127" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="5.08" y2="-0.635" width="0.127" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="6.985" y2="-1.27" width="0.127" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.127" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="9.525" y2="-1.27" width="0.127" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.127" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="0.635" x2="9.525" y2="1.27" width="0.127" layer="21"/>
<wire x1="9.525" y1="1.27" x2="8.255" y2="1.27" width="0.127" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="0.635" x2="6.985" y2="1.27" width="0.127" layer="21"/>
<wire x1="6.985" y1="1.27" x2="5.715" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.127" layer="21"/>
<wire x1="5.08" y1="0.635" x2="4.445" y2="1.27" width="0.127" layer="21"/>
<wire x1="4.445" y1="1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<pad name="7" x="13.97" y="0" drill="1.016" rot="R90"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.127" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.127" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.127" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.127" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.127" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.127" layer="21"/>
<pad name="8" x="16.51" y="0" drill="1.016" rot="R90"/>
<wire x1="13.335" y1="-1.27" x2="14.605" y2="-1.27" width="0.127" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="15.24" y2="-0.635" width="0.127" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="15.875" y2="-1.27" width="0.127" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="17.78" y2="-1.27" width="0.127" layer="21"/>
<wire x1="17.78" y1="-1.27" x2="17.78" y2="1.27" width="0.127" layer="21"/>
<wire x1="17.78" y1="1.27" x2="15.875" y2="1.27" width="0.127" layer="21"/>
<wire x1="15.875" y1="1.27" x2="15.24" y2="0.635" width="0.127" layer="21"/>
<wire x1="15.24" y1="0.635" x2="14.605" y2="1.27" width="0.127" layer="21"/>
<wire x1="14.605" y1="1.27" x2="13.335" y2="1.27" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="1X7">
<wire x1="-2.54" y1="10.16" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="-2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-2.54" y2="10.16" width="0.254" layer="94"/>
<pin name="1" x="5.08" y="7.62" length="middle" rot="R180"/>
<pin name="2" x="5.08" y="5.08" length="middle" rot="R180"/>
<pin name="3" x="5.08" y="2.54" length="middle" rot="R180"/>
<pin name="4" x="5.08" y="0" length="middle" rot="R180"/>
<pin name="5" x="5.08" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="5.08" y="-5.08" length="middle" rot="R180"/>
<pin name="7" x="5.08" y="-7.62" length="middle" rot="R180"/>
</symbol>
<symbol name="1X8">
<wire x1="-2.54" y1="10.16" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="-2.54" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-2.54" y2="10.16" width="0.254" layer="94"/>
<pin name="1" x="5.08" y="7.62" length="middle" rot="R180"/>
<pin name="2" x="5.08" y="5.08" length="middle" rot="R180"/>
<pin name="3" x="5.08" y="2.54" length="middle" rot="R180"/>
<pin name="4" x="5.08" y="0" length="middle" rot="R180"/>
<pin name="5" x="5.08" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="5.08" y="-5.08" length="middle" rot="R180"/>
<pin name="7" x="5.08" y="-7.62" length="middle" rot="R180"/>
<pin name="8" x="5.08" y="-10.16" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1X7HEADER_100MIL">
<gates>
<gate name="G$1" symbol="1X7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X7_100MIL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1X8HEADER_100MIL">
<gates>
<gate name="G$1" symbol="1X8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X8_100MIL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="FRAME_A_L" device=""/>
<part name="U1" library="texas" deviceset="LME49830" device=""/>
<part name="U$1" library="Headers" deviceset="1X7HEADER_100MIL" device=""/>
<part name="U$2" library="Headers" deviceset="1X8HEADER_100MIL" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="172.72" y="0"/>
<instance part="U1" gate="G$1" x="127" y="129.54"/>
<instance part="U$1" gate="G$1" x="220.98" y="177.8" rot="R180"/>
<instance part="U$2" gate="G$1" x="220.98" y="147.32" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NC1"/>
<wire x1="162.56" y1="124.46" x2="213.36" y2="124.46" width="0.1524" layer="91"/>
<wire x1="213.36" y1="124.46" x2="213.36" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="213.36" y1="139.7" x2="215.9" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MUTE"/>
<wire x1="121.92" y1="185.42" x2="111.76" y2="185.42" width="0.1524" layer="91"/>
<wire x1="111.76" y1="185.42" x2="111.76" y2="116.84" width="0.1524" layer="91"/>
<wire x1="111.76" y1="116.84" x2="210.82" y2="116.84" width="0.1524" layer="91"/>
<wire x1="210.82" y1="116.84" x2="210.82" y2="142.24" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="2"/>
<wire x1="210.82" y1="142.24" x2="215.9" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="132.08" y1="124.46" x2="132.08" y2="121.92" width="0.1524" layer="91"/>
<wire x1="132.08" y1="121.92" x2="208.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="208.28" y1="121.92" x2="208.28" y2="144.78" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="3"/>
<wire x1="208.28" y1="144.78" x2="215.9" y2="144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IN+"/>
<wire x1="121.92" y1="154.94" x2="121.92" y2="119.38" width="0.1524" layer="91"/>
<wire x1="121.92" y1="119.38" x2="205.74" y2="119.38" width="0.1524" layer="91"/>
<wire x1="205.74" y1="119.38" x2="205.74" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="4"/>
<wire x1="205.74" y1="147.32" x2="215.9" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IN-"/>
<wire x1="121.92" y1="160.02" x2="116.84" y2="160.02" width="0.1524" layer="91"/>
<wire x1="116.84" y1="160.02" x2="116.84" y2="114.3" width="0.1524" layer="91"/>
<wire x1="116.84" y1="114.3" x2="203.2" y2="114.3" width="0.1524" layer="91"/>
<wire x1="203.2" y1="114.3" x2="203.2" y2="149.86" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="5"/>
<wire x1="203.2" y1="149.86" x2="215.9" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="COMP"/>
<wire x1="170.18" y1="142.24" x2="200.66" y2="142.24" width="0.1524" layer="91"/>
<wire x1="200.66" y1="142.24" x2="200.66" y2="152.4" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="6"/>
<wire x1="200.66" y1="152.4" x2="215.9" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NC2"/>
<wire x1="160.02" y1="124.46" x2="160.02" y2="111.76" width="0.1524" layer="91"/>
<wire x1="160.02" y1="111.76" x2="198.12" y2="111.76" width="0.1524" layer="91"/>
<wire x1="198.12" y1="111.76" x2="198.12" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="7"/>
<wire x1="198.12" y1="154.94" x2="215.9" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="OSENSE"/>
<wire x1="170.18" y1="177.8" x2="175.26" y2="177.8" width="0.1524" layer="91"/>
<wire x1="175.26" y1="177.8" x2="175.26" y2="157.48" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="8"/>
<wire x1="175.26" y1="157.48" x2="215.9" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NC3"/>
<wire x1="157.48" y1="124.46" x2="157.48" y2="109.22" width="0.1524" layer="91"/>
<wire x1="157.48" y1="109.22" x2="195.58" y2="109.22" width="0.1524" layer="91"/>
<wire x1="195.58" y1="109.22" x2="195.58" y2="170.18" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="1"/>
<wire x1="195.58" y1="170.18" x2="215.9" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="-VEE"/>
<wire x1="147.32" y1="124.46" x2="147.32" y2="106.68" width="0.1524" layer="91"/>
<wire x1="147.32" y1="106.68" x2="193.04" y2="106.68" width="0.1524" layer="91"/>
<wire x1="193.04" y1="106.68" x2="193.04" y2="172.72" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="193.04" y1="172.72" x2="215.9" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="BIAS_M"/>
<wire x1="170.18" y1="152.4" x2="190.5" y2="152.4" width="0.1524" layer="91"/>
<wire x1="190.5" y1="152.4" x2="190.5" y2="175.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="190.5" y1="175.26" x2="215.9" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="BIAS_P"/>
<wire x1="170.18" y1="162.56" x2="187.96" y2="162.56" width="0.1524" layer="91"/>
<wire x1="187.96" y1="162.56" x2="187.96" y2="177.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="187.96" y1="177.8" x2="215.9" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P_OUT"/>
<wire x1="170.18" y1="147.32" x2="185.42" y2="147.32" width="0.1524" layer="91"/>
<wire x1="185.42" y1="147.32" x2="185.42" y2="180.34" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="185.42" y1="180.34" x2="215.9" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="N_OUT"/>
<wire x1="170.18" y1="167.64" x2="182.88" y2="167.64" width="0.1524" layer="91"/>
<wire x1="182.88" y1="167.64" x2="182.88" y2="182.88" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="182.88" y1="182.88" x2="215.9" y2="182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="+VCC"/>
<wire x1="147.32" y1="195.58" x2="208.28" y2="195.58" width="0.1524" layer="91"/>
<wire x1="208.28" y1="195.58" x2="208.28" y2="185.42" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="208.28" y1="185.42" x2="215.9" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
