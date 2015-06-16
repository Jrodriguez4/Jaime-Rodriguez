<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_B_L">
<frame x1="0" y1="0" x2="431.8" y2="279.4" columns="9" rows="6" layer="94" border-bottom="no"/>
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
<deviceset name="FRAME_B_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt; B Size , 11 x 17 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_B_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="325.12" y="0" addlevel="always"/>
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
<library name="rectifier">
<description>&lt;b&gt;Rectifiers&lt;/b&gt;&lt;p&gt;
General Instrument, Semikron, Diotec, Fagor&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1KAB">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 5,08 x 5,08 mm</description>
<wire x1="-4.445" y1="-4.826" x2="2.54" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-4.826" x2="4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.54" x2="4.826" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.445" x2="-4.445" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="4.445" y1="4.826" x2="4.826" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.826" y1="4.445" x2="-4.445" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.826" y1="-4.445" x2="-4.826" y2="4.445" width="0.1524" layer="21"/>
<wire x1="4.445" y1="4.826" x2="-4.445" y2="4.826" width="0.1524" layer="21"/>
<wire x1="1.524" y1="3.81" x2="2.54" y2="3.81" width="0.1524" layer="51" curve="-180"/>
<wire x1="2.54" y1="3.81" x2="3.4036" y2="3.81" width="0.1524" layer="51" curve="180"/>
<wire x1="-3.556" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.54" y1="-3.81" x2="-1.6764" y2="-3.81" width="0.1524" layer="51" curve="180"/>
<pad name="AC1" x="-2.54" y="-2.54" drill="1.016" shape="octagon"/>
<pad name="+" x="2.54" y="-2.54" drill="1.016" shape="octagon"/>
<pad name="AC2" x="2.54" y="2.54" drill="1.016" shape="octagon"/>
<pad name="-" x="-2.54" y="2.54" drill="1.016" shape="octagon"/>
<text x="-4.699" y="5.461" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="1.27" y="-4.318" size="1.27" layer="51" ratio="10">+</text>
<text x="-3.937" y="3.302" size="1.27" layer="51" ratio="10">-</text>
<rectangle x1="-5.08" y1="-5.08" x2="2.54" y2="5.08" layer="43"/>
<rectangle x1="2.54" y1="-2.54" x2="5.08" y2="5.08" layer="43"/>
<rectangle x1="2.54" y1="-3.81" x2="3.81" y2="-2.54" layer="43"/>
</package>
<package name="2KBB">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 5 mm</description>
<wire x1="-8.89" y1="-3.429" x2="-8.89" y2="3.429" width="0.1524" layer="21"/>
<wire x1="8.89" y1="3.429" x2="8.89" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="3.429" x2="5.969" y2="3.429" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.429" x2="5.969" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.429" x2="8.89" y2="3.429" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-3.429" x2="-8.89" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-2.54" x2="7.874" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-2.54" x2="-2.032" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.5946" y1="-2.54" x2="-6.9342" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-8.255" y1="-2.54" x2="-7.5946" y2="-2.54" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.3114" y1="-2.54" x2="2.9718" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="1.651" y1="-2.54" x2="2.3114" y2="-2.54" width="0.1524" layer="21" curve="-180"/>
<wire x1="8.89" y1="-3.429" x2="5.969" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.048" x2="-2.54" y2="-2.032" width="0.1524" layer="21"/>
<pad name="-" x="7.3914" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC1" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC2" x="2.413" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="+" x="-2.6162" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.89" y="3.81" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="3.81" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-9.017" y1="-3.556" x2="9.017" y2="3.556" layer="43"/>
</package>
<package name="2KBB-R">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 5 mm</description>
<wire x1="-8.89" y1="-3.429" x2="-8.89" y2="3.429" width="0.1524" layer="21"/>
<wire x1="8.89" y1="3.429" x2="8.89" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="3.429" x2="5.969" y2="3.429" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.429" x2="5.969" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.429" x2="8.89" y2="3.429" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-3.429" x2="-8.89" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-2.54" x2="7.874" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.6416" y1="-2.54" x2="-1.9812" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.302" y1="-2.54" x2="-2.6416" y2="-2.54" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.3114" y1="-2.54" x2="2.9718" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="1.651" y1="-2.54" x2="2.3114" y2="-2.54" width="0.1524" layer="21" curve="-180"/>
<wire x1="8.89" y1="-3.429" x2="5.969" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-3.048" x2="-7.62" y2="-2.032" width="0.1524" layer="21"/>
<pad name="-" x="7.3914" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="+" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC2" x="2.413" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC1" x="-2.6162" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.89" y="3.81" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="3.81" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-9.017" y1="-3.556" x2="9.017" y2="3.556" layer="43"/>
</package>
<package name="2KBP">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 3,81 mm</description>
<wire x1="-8.763" y1="-3.429" x2="-8.763" y2="3.429" width="0.1524" layer="21"/>
<wire x1="8.763" y1="3.429" x2="8.763" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="3.429" x2="5.08" y2="3.429" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.429" x2="8.763" y2="3.429" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.8796" y1="-2.54" x2="-1.2192" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.54" y1="-2.54" x2="-1.8796" y2="-2.54" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.9304" y1="-2.54" x2="2.5908" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="1.27" y1="-2.54" x2="1.9304" y2="-2.54" width="0.1524" layer="21" curve="-180"/>
<wire x1="8.763" y1="-3.429" x2="5.08" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.429" x2="-8.763" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.429" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-3.429" width="0.1524" layer="21"/>
<pad name="-" x="-5.715" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC1" x="-1.905" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC2" x="1.905" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="+" x="5.715" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.763" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="3.937" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.89" y1="-3.556" x2="8.89" y2="3.556" layer="43"/>
</package>
<package name="B-DIL">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;</description>
<wire x1="4.699" y1="-2.921" x2="4.699" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.921" x2="-4.699" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="2.921" x2="-4.699" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.921" x2="-3.937" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="2.921" x2="-3.937" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-2.032" x2="-2.032" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.524" x2="-2.54" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-2.032" x2="3.048" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-2.921" x2="4.699" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.921" x2="-3.937" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.413" x2="-2.5146" y2="2.413" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.5146" y1="2.413" x2="-1.8542" y2="2.413" width="0.1524" layer="21" curve="180"/>
<wire x1="2.5654" y1="2.413" x2="3.2258" y2="2.413" width="0.1524" layer="21" curve="180"/>
<wire x1="1.905" y1="2.413" x2="2.5654" y2="2.413" width="0.1524" layer="21" curve="-180"/>
<circle x="-2.54" y="-2.032" radius="0.635" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="-3.81" drill="0.8128"/>
<pad name="-" x="2.54" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="AC1" x="2.54" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="AC2" x="-2.54" y="3.81" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.175" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-2.921" y1="-3.81" x2="-2.159" y2="-2.921" layer="51"/>
<rectangle x1="2.159" y1="-3.81" x2="2.921" y2="-2.921" layer="51"/>
<rectangle x1="2.159" y1="2.921" x2="2.921" y2="3.81" layer="51"/>
<rectangle x1="-2.921" y1="2.921" x2="-2.159" y2="3.81" layer="51"/>
<rectangle x1="-3.175" y1="-3.175" x2="-1.905" y2="-2.921" layer="51"/>
<rectangle x1="1.905" y1="-3.175" x2="3.175" y2="-2.921" layer="51"/>
<rectangle x1="1.905" y1="2.921" x2="3.175" y2="3.175" layer="51"/>
<rectangle x1="-3.175" y1="2.921" x2="-1.905" y2="3.175" layer="51"/>
<rectangle x1="-4.445" y1="-3.175" x2="4.445" y2="3.175" layer="43"/>
</package>
<package name="DSI32">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
3.2 A</description>
<wire x1="-19.969" y1="-3.326" x2="14.702" y2="-3.326" width="0.1524" layer="21"/>
<wire x1="20.036" y1="-3.326" x2="20.036" y2="3.278" width="0.1524" layer="21"/>
<wire x1="-19.969" y1="3.278" x2="14.702" y2="3.278" width="0.1524" layer="21"/>
<wire x1="-19.969" y1="3.278" x2="-19.969" y2="-3.326" width="0.1524" layer="21"/>
<wire x1="14.702" y1="-3.326" x2="14.702" y2="3.278" width="0.1524" layer="21"/>
<wire x1="14.702" y1="-3.326" x2="20.036" y2="-3.326" width="0.1524" layer="21"/>
<wire x1="14.702" y1="3.278" x2="20.036" y2="3.278" width="0.1524" layer="21"/>
<wire x1="-3.84" y1="-0.532" x2="-2.824" y2="-0.532" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.824" y1="-0.532" x2="-1.808" y2="-0.532" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.796" y1="-0.532" x2="5.812" y2="-0.532" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.78" y1="-0.532" x2="4.796" y2="-0.532" width="0.1524" layer="21" curve="180"/>
<wire x1="10.384" y1="-0.532" x2="11.654" y2="-0.532" width="0.1524" layer="21"/>
<wire x1="-12.095" y1="1.5" x2="-10.825" y2="1.5" width="0.1524" layer="21"/>
<wire x1="-11.46" y1="0.865" x2="-11.46" y2="2.135" width="0.1524" layer="21"/>
<pad name="+" x="-14" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC1" x="-3.9924" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC2" x="3.5006" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<pad name="-" x="10.9936" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<text x="-20.096" y="3.913" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.46" y="3.913" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-20" y1="-3.5" x2="20" y2="3.5" layer="43"/>
</package>
<package name="DSI32A">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
3.2 A</description>
<wire x1="-9.6712" y1="0.865" x2="-8.6552" y2="0.865" width="0.1524" layer="21" curve="180"/>
<wire x1="-8.6552" y1="0.865" x2="-7.6392" y2="0.865" width="0.1524" layer="21" curve="-180"/>
<wire x1="6.5848" y1="0.865" x2="7.6008" y2="0.865" width="0.1524" layer="21" curve="-180"/>
<wire x1="5.5688" y1="0.865" x2="6.5848" y2="0.865" width="0.1524" layer="21" curve="180"/>
<wire x1="13.316" y1="0.865" x2="14.586" y2="0.865" width="0.1524" layer="21"/>
<wire x1="-1.924" y1="0.865" x2="-0.654" y2="0.865" width="0.1524" layer="21"/>
<wire x1="-1.289" y1="0.23" x2="-1.289" y2="1.5" width="0.1524" layer="21"/>
<wire x1="10.725" y1="3.278" x2="10.725" y2="-0.405" width="0.1524" layer="51"/>
<wire x1="10.725" y1="-0.405" x2="10.725" y2="-3.326" width="0.1524" layer="21"/>
<wire x1="10.725" y1="-3.326" x2="16.059" y2="-3.326" width="0.1524" layer="21"/>
<wire x1="16.059" y1="-3.326" x2="16.059" y2="3.278" width="0.1524" layer="21"/>
<wire x1="-20.009" y1="3.278" x2="-20.009" y2="-3.326" width="0.1524" layer="21"/>
<wire x1="-20.009" y1="3.278" x2="16.059" y2="3.278" width="0.1524" layer="21"/>
<wire x1="-20.009" y1="-3.326" x2="10.725" y2="-3.326" width="0.1524" layer="21"/>
<pad name="AC1" x="-11.5" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<pad name="+" x="-3.9816" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC2" x="3.5114" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<pad name="-" x="11.0044" y="1.5" drill="1.3208" shape="long" rot="R90"/>
<text x="-20.2122" y="3.786" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.5762" y="3.786" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-20" y1="-3.5" x2="16" y2="3.5" layer="43"/>
</package>
<package name="FB100">
<description>&lt;b&gt;FAGOR RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 1 x 10,2 x 7,5 mm</description>
<wire x1="-19.969" y1="-3.556" x2="14.702" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="20.036" y1="-3.556" x2="20.036" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-19.969" y1="3.556" x2="14.702" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-19.969" y1="3.556" x2="-19.969" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="14.702" y1="-3.556" x2="14.702" y2="3.556" width="0.1524" layer="21"/>
<wire x1="14.702" y1="-3.556" x2="20.036" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="14.702" y1="3.556" x2="20.036" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-3.84" y1="-2.032" x2="-2.824" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.824" y1="-2.032" x2="-1.808" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.796" y1="-2.032" x2="5.812" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.78" y1="-2.032" x2="4.796" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="10.384" y1="-2.032" x2="11.654" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-13.111" y1="-2.032" x2="-11.841" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-12.476" y1="-2.667" x2="-12.476" y2="-1.397" width="0.1524" layer="21"/>
<pad name="+" x="-14" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC1" x="-3.9924" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC2" x="3.5006" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="-" x="10.9936" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-19.969" y="4.064" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.46" y="4.064" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-20" y1="-3.5" x2="20" y2="3.5" layer="43"/>
</package>
<package name="FB15">
<description>&lt;b&gt;FAGOR RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 5 mm</description>
<wire x1="-10.04" y1="-2.54" x2="-10.04" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.28" y1="2.54" x2="10.28" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.04" y1="2.54" x2="6.724" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.724" y1="2.54" x2="10.28" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.232" y1="-1.778" x2="8.248" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-6.484" y1="-1.651" x2="-5.468" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-3.0296" y1="-1.778" x2="-2.3692" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.69" y1="-1.778" x2="-3.0296" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.7964" y1="-1.778" x2="2.4568" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="1.136" y1="-1.778" x2="1.7964" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="10.28" y1="-2.54" x2="6.724" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.724" y1="-2.54" x2="-10.04" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.976" y1="-2.159" x2="-5.976" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="6.724" y1="2.54" x2="6.724" y2="1.397" width="0.1524" layer="21"/>
<wire x1="6.724" y1="-1.397" x2="6.724" y2="1.397" width="0.1524" layer="51"/>
<wire x1="6.724" y1="-1.397" x2="6.724" y2="-2.54" width="0.1524" layer="21"/>
<pad name="-" x="7.5114" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="+" x="-7.5" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC2" x="2.533" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC1" x="-2.4962" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.04" y="3.048" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.912" y="3.048" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10" y1="-2.5" x2="10" y2="2.5" layer="43"/>
</package>
<package name="FB15A">
<description>&lt;b&gt;FAGOR RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 5 mm</description>
<wire x1="-11.056" y1="-2.54" x2="-11.056" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.264" y1="2.54" x2="9.264" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-11.056" y1="2.54" x2="5.708" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.708" y1="2.54" x2="9.264" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.978" y1="-1.778" x2="7.994" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-9.532" y1="-1.651" x2="-8.516" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-3.4106" y1="-1.651" x2="-2.7502" y2="-1.651" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.071" y1="-1.651" x2="-3.4106" y2="-1.651" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.5424" y1="-1.651" x2="2.2028" y2="-1.651" width="0.1524" layer="21" curve="180"/>
<wire x1="0.882" y1="-1.651" x2="1.5424" y2="-1.651" width="0.1524" layer="21" curve="-180"/>
<wire x1="9.264" y1="-2.54" x2="5.708" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.708" y1="-2.54" x2="-11.056" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.024" y1="-2.159" x2="-9.024" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="5.708" y1="2.54" x2="5.708" y2="-2.54" width="0.1524" layer="21"/>
<pad name="-" x="7.5114" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="+" x="-7.5" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC2" x="2.533" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC1" x="-2.4962" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-11.056" y="3.048" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.42" y="3.048" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-11" y1="-2.5" x2="9.5" y2="2.5" layer="43"/>
</package>
<package name="FB32">
<description>&lt;b&gt;FAGOR RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 1 x 10,2 x 7,5 mm</description>
<wire x1="15.075" y1="-3.048" x2="15.075" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-17.056" y1="2.921" x2="-17.056" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-17.056" y1="-3.048" x2="10.376" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="10.376" y1="-3.048" x2="15.075" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-17.056" y1="2.921" x2="10.376" y2="2.921" width="0.1524" layer="21"/>
<wire x1="10.376" y1="2.921" x2="15.075" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-3.34" y1="-2.032" x2="-2.324" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.324" y1="-2.032" x2="-1.308" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="5.296" y1="-2.032" x2="6.312" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.28" y1="-2.032" x2="5.296" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="10.884" y1="-2.032" x2="12.154" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-12.611" y1="-2.032" x2="-11.341" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-11.976" y1="-2.667" x2="-11.976" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="10.376" y1="2.921" x2="10.376" y2="1.651" width="0.1524" layer="21"/>
<wire x1="10.376" y1="-1.651" x2="10.376" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.376" y1="-1.651" x2="10.376" y2="-3.048" width="0.1524" layer="21"/>
<pad name="+" x="-13.5" y="0" drill="1.397" shape="long" rot="R90"/>
<pad name="AC1" x="-3.4924" y="0" drill="1.397" shape="long" rot="R90"/>
<pad name="AC2" x="4.0006" y="0" drill="1.397" shape="long" rot="R90"/>
<pad name="-" x="11.4936" y="0" drill="1.397" shape="long" rot="R90"/>
<text x="-17.056" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.42" y="3.429" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-17" y1="-3" x2="15" y2="3" layer="43"/>
</package>
<package name="FBM">
<description>&lt;b&gt;GENERAL INSTRUMENT RECTIFIER&lt;/b&gt;</description>
<wire x1="9.144" y1="14.224" x2="14.224" y2="9.144" width="0.1524" layer="21"/>
<wire x1="14.224" y1="-13.081" x2="14.224" y2="9.144" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="-14.224" x2="13.081" y2="-14.224" width="0.1524" layer="21"/>
<wire x1="13.081" y1="-13.462" x2="13.462" y2="-13.081" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.462" y1="-13.081" x2="-13.081" y2="-13.462" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.462" y1="13.081" x2="-13.081" y2="13.462" width="0.1524" layer="21" curve="-90"/>
<wire x1="13.081" y1="-14.224" x2="14.224" y2="-13.081" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.224" y1="13.081" x2="-13.081" y2="14.224" width="0.1524" layer="21" curve="-90"/>
<wire x1="-14.224" y1="-13.081" x2="-13.081" y2="-14.224" width="0.1524" layer="21" curve="90"/>
<wire x1="13.081" y1="-13.462" x2="-13.081" y2="-13.462" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-13.081" x2="-13.462" y2="13.081" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="14.224" x2="9.144" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-14.224" y1="13.081" x2="-14.224" y2="-13.081" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="13.462" x2="8.763" y2="13.462" width="0.1524" layer="21"/>
<wire x1="13.462" y1="8.763" x2="8.763" y2="13.462" width="0.1524" layer="21"/>
<wire x1="13.462" y1="8.763" x2="13.462" y2="-13.081" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-4.699" x2="0.635" y2="-4.699" width="0.1524" layer="21" curve="180"/>
<wire x1="0.635" y1="-4.699" x2="0.635" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-4.699" x2="-0.635" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.635" x2="-4.699" y2="-0.635" width="0.1524" layer="21" curve="180"/>
<wire x1="-0.635" y1="4.699" x2="0.635" y2="4.699" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.699" y1="-0.635" x2="4.699" y2="0.635" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.699" y1="0.635" x2="-4.064" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.064" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="4.699" y1="0.635" x2="4.064" y2="0.635" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-0.635" x2="4.064" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.699" x2="0.635" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="4.699" x2="-0.635" y2="4.064" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.064" x2="4.0689" y2="0.6028" width="0.1524" layer="21" curve="-72.692382"/>
<wire x1="0.655" y1="-4.0608" x2="4.064" y2="-0.635" width="0.1524" layer="21" curve="71.956214"/>
<wire x1="-4.0608" y1="-0.655" x2="-0.635" y2="-4.064" width="0.1524" layer="21" curve="71.956214"/>
<wire x1="-4.064" y1="0.635" x2="-0.6762" y2="4.0573" width="0.1524" layer="21" curve="-71.656592"/>
<wire x1="7.62" y1="-6.35" x2="8.89" y2="-6.35" width="0.1524" layer="21" curve="-180"/>
<wire x1="8.89" y1="-6.35" x2="10.16" y2="-6.35" width="0.1524" layer="21" curve="180"/>
<wire x1="-10.16" y1="6.35" x2="-8.89" y2="6.35" width="0.1524" layer="21" curve="-180"/>
<wire x1="-8.89" y1="6.35" x2="-7.62" y2="6.35" width="0.1524" layer="21" curve="180"/>
<wire x1="-10.16" y1="-6.35" x2="-7.62" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="6.35" y1="7.62" x2="6.35" y2="10.16" width="0.1524" layer="21"/>
<wire x1="5.08" y1="8.89" x2="7.62" y2="8.89" width="0.1524" layer="21"/>
<wire x1="9.525" y1="14.605" x2="14.605" y2="9.525" width="0.127" layer="39"/>
<wire x1="14.605" y1="9.525" x2="14.605" y2="-13.97" width="0.127" layer="39"/>
<wire x1="13.97" y1="-14.605" x2="14.605" y2="-13.97" width="0.127" layer="39"/>
<wire x1="13.97" y1="-14.605" x2="-13.97" y2="-14.605" width="0.127" layer="39"/>
<wire x1="-14.605" y1="-13.97" x2="-13.97" y2="-14.605" width="0.127" layer="39"/>
<wire x1="-14.605" y1="-13.97" x2="-14.605" y2="13.97" width="0.127" layer="39"/>
<wire x1="-13.97" y1="14.605" x2="-14.605" y2="13.97" width="0.127" layer="39"/>
<wire x1="-13.97" y1="14.605" x2="9.525" y2="14.605" width="0.127" layer="39"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<pad name="-" x="-9.0678" y="-9.0678" drill="1.1938" diameter="3" shape="octagon"/>
<pad name="AC2" x="9.0678" y="-9.0678" drill="1.1938" diameter="3" shape="octagon"/>
<pad name="AC1" x="-9.0678" y="9.0678" drill="1.1938" diameter="3" shape="octagon"/>
<pad name="+" x="2.3368" y="9.0678" drill="1.1938" diameter="3" shape="octagon"/>
<text x="-12.7" y="15.24" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-14.605" y1="-14.605" x2="14.605" y2="14.605" layer="43"/>
</package>
<package name="FBP1,5">
<description>&lt;b&gt;FAGOR RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 4 mm</description>
<wire x1="-8.54" y1="-2.929" x2="-8.54" y2="3.421" width="0.1524" layer="21"/>
<wire x1="8.986" y1="3.421" x2="8.986" y2="-2.929" width="0.1524" layer="21"/>
<wire x1="-8.54" y1="3.421" x2="7.335" y2="3.421" width="0.1524" layer="21"/>
<wire x1="8.986" y1="-2.929" x2="7.335" y2="-2.929" width="0.1524" layer="21"/>
<wire x1="7.335" y1="3.421" x2="7.335" y2="-2.929" width="0.1524" layer="21"/>
<wire x1="7.335" y1="3.421" x2="8.986" y2="3.421" width="0.1524" layer="21"/>
<wire x1="7.335" y1="-2.929" x2="-8.54" y2="-2.929" width="0.1524" layer="21"/>
<wire x1="5.811" y1="2.405" x2="5.811" y2="1.135" width="0.1524" layer="21"/>
<wire x1="5.176" y1="1.77" x2="6.446" y2="1.77" width="0.1524" layer="21"/>
<wire x1="-6.635" y1="1.77" x2="-5.365" y2="1.77" width="0.1524" layer="21"/>
<wire x1="-2.0376" y1="1.643" x2="-1.3772" y2="1.643" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.698" y1="1.643" x2="-2.0376" y2="1.643" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.8994" y1="1.643" x2="2.5598" y2="1.643" width="0.1524" layer="21" curve="180"/>
<wire x1="1.239" y1="1.643" x2="1.8994" y2="1.643" width="0.1524" layer="21" curve="-180"/>
<pad name="-" x="-6" y="-0.77" drill="1.1176" shape="long" rot="R90"/>
<pad name="AC2" x="-2.063" y="-0.77" drill="1.1176" shape="long" rot="R90"/>
<pad name="AC1" x="1.874" y="-0.77" drill="1.1176" shape="long" rot="R90"/>
<pad name="+" x="5.811" y="-0.77" drill="1.1176" shape="long" rot="R90"/>
<text x="-8.54" y="3.802" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.92" y="3.802" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5" y1="-3" x2="9" y2="3.5" layer="43"/>
</package>
<package name="FBU4">
<description>&lt;b&gt;FAGOR RECTIFIER&lt;/b&gt;&lt;p&gt;
grid 3 x 5 mm</description>
<wire x1="-11.43" y1="-3.445" x2="-11.43" y2="3.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.54" x2="11.43" y2="-3.445" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="3.54" x2="6.35" y2="3.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="3.54" x2="11.43" y2="3.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-3.445" x2="6.35" y2="-3.445" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-3.445" x2="-11.43" y2="-3.445" width="0.1524" layer="21"/>
<wire x1="7.62" y1="2.27" x2="7.62" y2="1" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.635" x2="8.255" y2="1.635" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.635" x2="-6.985" y2="1.635" width="0.1524" layer="21"/>
<wire x1="-2.5146" y1="1.635" x2="-1.8542" y2="1.635" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.175" y1="1.635" x2="-2.5146" y2="1.635" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.5654" y1="1.635" x2="3.2258" y2="1.635" width="0.1524" layer="21" curve="180"/>
<wire x1="1.905" y1="1.635" x2="2.5654" y2="1.635" width="0.1524" layer="21" curve="-180"/>
<wire x1="6.35" y1="-3.445" x2="6.35" y2="-2.81" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.27" x2="6.35" y2="-2.81" width="0.1524" layer="51"/>
<wire x1="6.35" y1="-0.27" x2="6.35" y2="3.54" width="0.1524" layer="21"/>
<pad name="-" x="-7.62" y="-1.54" drill="1.4986" shape="long" rot="R90"/>
<pad name="AC2" x="-2.54" y="-1.54" drill="1.4986" shape="long" rot="R90"/>
<pad name="AC1" x="2.54" y="-1.54" drill="1.4986" shape="long" rot="R90"/>
<pad name="+" x="7.62" y="-1.54" drill="1.4986" shape="long" rot="R90"/>
<text x="-11.43" y="4.048" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="4.048" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-11.5" y1="-3.5" x2="11" y2="3.5" layer="43"/>
</package>
<package name="GBPC1">
<description>&lt;b&gt;GENERAL INSTRUMENT RECTIFIER&lt;/b&gt;</description>
<wire x1="-7.366" y1="-8.001" x2="7.366" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="8.001" y1="5.461" x2="5.461" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-7.366" x2="-7.366" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="7.366" y1="-8.001" x2="8.001" y2="-7.366" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.001" y1="7.366" x2="-7.366" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.001" y1="-7.366" x2="8.001" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-7.366" x2="-8.001" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="8.001" x2="5.461" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.27" y1="5.08" x2="3.81" y2="5.08" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.35" x2="2.54" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.715" x2="-1.27" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-5.715" x2="2.54" y2="-5.715" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.54" y1="-5.715" x2="3.81" y2="-5.715" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.81" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.1524" layer="21" curve="180"/>
<wire x1="5.715" y1="8.255" x2="8.255" y2="5.715" width="0.127" layer="39"/>
<wire x1="8.255" y1="5.715" x2="8.255" y2="-7.62" width="0.127" layer="39"/>
<wire x1="7.62" y1="-8.255" x2="8.255" y2="-7.62" width="0.127" layer="39"/>
<wire x1="7.62" y1="-8.255" x2="-7.62" y2="-8.255" width="0.127" layer="39"/>
<wire x1="-8.255" y1="-7.62" x2="-7.62" y2="-8.255" width="0.127" layer="39"/>
<wire x1="-8.255" y1="-7.62" x2="-8.255" y2="7.62" width="0.127" layer="39"/>
<wire x1="-7.62" y1="8.255" x2="-8.255" y2="7.62" width="0.127" layer="39"/>
<wire x1="-7.62" y1="8.255" x2="5.715" y2="8.255" width="0.127" layer="39"/>
<circle x="0" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="-" x="-5.461" y="-5.461" drill="1.1176" diameter="2.54" shape="octagon"/>
<pad name="AC2" x="5.461" y="-5.461" drill="1.1176" diameter="2.54" shape="octagon"/>
<pad name="+" x="5.461" y="5.461" drill="1.1176" diameter="2.54" shape="octagon"/>
<pad name="AC1" x="-5.461" y="5.461" drill="1.1176" diameter="2.54" shape="octagon"/>
<text x="-3.81" y="-3.937" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="8.636" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-8.255" y1="-8.255" x2="8.255" y2="8.255" layer="43"/>
</package>
<package name="GBPC6">
<description>&lt;b&gt;GENERAL INSTRUMENT RECTIFIER&lt;/b&gt;</description>
<wire x1="-7.366" y1="-8.001" x2="7.366" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="8.001" y1="5.461" x2="5.461" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-7.366" x2="-7.366" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="7.366" y1="-8.001" x2="8.001" y2="-7.366" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.001" y1="7.366" x2="-7.366" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.001" y1="-7.366" x2="8.001" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-7.366" x2="-8.001" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="8.001" x2="5.461" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.27" y1="5.08" x2="3.81" y2="5.08" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.35" x2="2.54" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.715" x2="-1.27" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-5.715" x2="2.54" y2="-5.715" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.54" y1="-5.715" x2="3.81" y2="-5.715" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.81" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.1524" layer="21" curve="180"/>
<wire x1="5.715" y1="8.255" x2="8.255" y2="5.715" width="0.127" layer="39"/>
<wire x1="8.255" y1="5.715" x2="8.255" y2="-7.62" width="0.127" layer="39"/>
<wire x1="7.62" y1="-8.255" x2="8.255" y2="-7.62" width="0.127" layer="39"/>
<wire x1="7.62" y1="-8.255" x2="-7.62" y2="-8.255" width="0.127" layer="39"/>
<wire x1="-8.255" y1="-7.62" x2="-7.62" y2="-8.255" width="0.127" layer="39"/>
<wire x1="-8.255" y1="-7.62" x2="-8.255" y2="7.62" width="0.127" layer="39"/>
<wire x1="-7.62" y1="8.255" x2="-8.255" y2="7.62" width="0.127" layer="39"/>
<wire x1="-7.62" y1="8.255" x2="5.715" y2="8.255" width="0.127" layer="39"/>
<circle x="0" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="-" x="-5.461" y="-5.461" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="AC2" x="5.461" y="-5.461" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="+" x="5.461" y="5.461" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="AC1" x="-5.461" y="5.461" drill="1.3208" diameter="2.54" shape="octagon"/>
<text x="-3.81" y="-3.937" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="8.636" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-8.255" y1="-8.255" x2="8.255" y2="8.255" layer="43"/>
</package>
<package name="GBPC80X">
<description>&lt;b&gt;GENERAL INSTRUMENT RECTIFIER&lt;/b&gt;</description>
<wire x1="-9.271" y1="-9.906" x2="9.271" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="9.906" y1="7.366" x2="7.366" y2="9.906" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-9.271" x2="-9.271" y2="-9.906" width="0.1524" layer="21" curve="90"/>
<wire x1="9.271" y1="-9.906" x2="9.906" y2="-9.271" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.906" y1="9.271" x2="-9.271" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.906" y1="-9.271" x2="9.906" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-9.271" x2="-9.906" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="9.906" x2="7.366" y2="9.906" width="0.1524" layer="21"/>
<wire x1="1.905" y1="6.35" x2="4.445" y2="6.35" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="3.175" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-6.35" x2="-1.905" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-6.35" x2="3.175" y2="-6.35" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.175" y1="-6.35" x2="4.445" y2="-6.35" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.445" y1="6.35" x2="-3.175" y2="6.35" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.175" y1="6.35" x2="-1.905" y2="6.35" width="0.1524" layer="21" curve="180"/>
<wire x1="7.62" y1="10.16" x2="10.16" y2="7.62" width="0.127" layer="39"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-9.525" width="0.127" layer="39"/>
<wire x1="9.525" y1="-10.16" x2="10.16" y2="-9.525" width="0.127" layer="39"/>
<wire x1="9.525" y1="-10.16" x2="-9.525" y2="-10.16" width="0.127" layer="39"/>
<wire x1="-10.16" y1="-9.525" x2="-9.525" y2="-10.16" width="0.127" layer="39"/>
<wire x1="-10.16" y1="-9.525" x2="-10.16" y2="9.525" width="0.127" layer="39"/>
<wire x1="-9.525" y1="10.16" x2="-10.16" y2="9.525" width="0.127" layer="39"/>
<wire x1="-9.525" y1="10.16" x2="7.62" y2="10.16" width="0.127" layer="39"/>
<circle x="0" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="-" x="-6.35" y="-6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="AC2" x="6.35" y="-6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="+" x="6.35" y="6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="AC1" x="-6.35" y="6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-4.445" y="-5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-9.525" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-10.16" y1="-10.16" x2="10.16" y2="10.16" layer="43"/>
</package>
<package name="GBU4">
<description>&lt;b&gt;GENERAL INSTRUMENT RECTIFIER&lt;/b&gt;</description>
<wire x1="-11.43" y1="-2.794" x2="-11.43" y2="4.318" width="0.1524" layer="21"/>
<wire x1="11.43" y1="4.318" x2="11.43" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.318" x2="6.35" y2="4.318" width="0.1524" layer="21"/>
<wire x1="6.35" y1="4.318" x2="11.43" y2="4.318" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.0546" y1="1.27" x2="-4.3942" y2="1.27" width="0.1524" layer="21" curve="180"/>
<wire x1="-5.715" y1="1.27" x2="-5.0546" y2="1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="0.0254" y1="1.27" x2="0.6858" y2="1.27" width="0.1524" layer="21" curve="180"/>
<wire x1="-0.635" y1="1.27" x2="0.0254" y2="1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="11.43" y1="-2.794" x2="6.35" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-2.794" x2="6.35" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="6.35" y1="4.318" x2="6.35" y2="1.397" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.397" x2="6.35" y2="1.397" width="0.1524" layer="51"/>
<wire x1="6.35" y1="-2.794" x2="-11.43" y2="-2.794" width="0.1524" layer="21"/>
<pad name="-" x="-7.62" y="0" drill="1.4986" shape="long" rot="R90"/>
<pad name="AC2" x="-2.54" y="0" drill="1.4986" shape="long" rot="R90"/>
<pad name="AC1" x="2.54" y="0" drill="1.4986" shape="long" rot="R90"/>
<pad name="+" x="7.62" y="0" drill="1.4986" shape="long" rot="R90"/>
<text x="-11.43" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="4.699" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-11.62" y1="-3" x2="11.38" y2="4.5" layer="43"/>
</package>
<package name="GBU4S">
<description>&lt;b&gt;GENERAL INSTRUMENT RECTIFIER&lt;/b&gt;</description>
<wire x1="-11.43" y1="-1.27" x2="-11.43" y2="2.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="2.54" x2="11.43" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="2.54" x2="6.35" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="2.54" x2="11.43" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.0546" y1="1.27" x2="-4.3942" y2="1.27" width="0.1524" layer="21" curve="180"/>
<wire x1="-5.715" y1="1.27" x2="-5.0546" y2="1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="0.0254" y1="1.27" x2="0.6858" y2="1.27" width="0.1524" layer="21" curve="180"/>
<wire x1="-0.635" y1="1.27" x2="0.0254" y2="1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="11.43" y1="-1.27" x2="8.89" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-1.27" x2="6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-3.81" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-1.27" x2="-3.81" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="2.54" x2="6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-1.27" x2="-8.89" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-1.27" x2="-11.43" y2="-1.27" width="0.1524" layer="21"/>
<pad name="-" x="-7.62" y="0" drill="1.4986" shape="long" rot="R90"/>
<pad name="AC2" x="-2.54" y="0" drill="1.4986" shape="long" rot="R90"/>
<pad name="AC1" x="2.54" y="0" drill="1.4986" shape="long" rot="R90"/>
<pad name="+" x="7.62" y="0" drill="1.4986" shape="long" rot="R90"/>
<text x="-11.43" y="3.048" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="3.048" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-11.43" y1="-1.905" x2="11.43" y2="2.54" layer="43"/>
</package>
<package name="KBL">
<description>&lt;b&gt;DIOTEC RECTIFIER&lt;/b&gt;</description>
<wire x1="-9.779" y1="-3.175" x2="-9.779" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-3.175" x2="9.779" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="9.779" y1="3.429" x2="9.779" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="9.779" y1="3.429" x2="-9.779" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="1.778" x2="-7.112" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-2.5146" y1="1.905" x2="-1.8542" y2="1.905" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.175" y1="1.905" x2="-2.5146" y2="1.905" width="0.1524" layer="21" curve="-180"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="2.286" width="0.1524" layer="21"/>
<wire x1="7.112" y1="1.778" x2="8.128" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.5654" y1="1.905" x2="3.2258" y2="1.905" width="0.1524" layer="21" curve="180"/>
<wire x1="1.905" y1="1.905" x2="2.5654" y2="1.905" width="0.1524" layer="21" curve="-180"/>
<pad name="+" x="-7.62" y="-1.27" drill="1.6002" shape="long" rot="R90"/>
<pad name="AC2" x="-2.54" y="-1.27" drill="1.6002" shape="long" rot="R90"/>
<pad name="AC1" x="2.54" y="-1.27" drill="1.6002" shape="long" rot="R90"/>
<pad name="-" x="7.62" y="-1.27" drill="1.6002" shape="long" rot="R90"/>
<text x="-9.525" y="3.81" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="3.81" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-9.906" y1="-3.302" x2="9.906" y2="3.556" layer="43"/>
</package>
<package name="KBU">
<description>&lt;b&gt;DIOTEC RECTIFIER&lt;/b&gt;</description>
<wire x1="-11.811" y1="-2.921" x2="-11.811" y2="3.683" width="0.1524" layer="21"/>
<wire x1="11.938" y1="3.683" x2="11.938" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.5146" y1="0.127" x2="-1.8542" y2="0.127" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.175" y1="0.127" x2="-2.5146" y2="0.127" width="0.1524" layer="21" curve="-180"/>
<wire x1="-8.89" y1="-0.508" x2="-8.89" y2="0.508" width="0.1524" layer="21"/>
<wire x1="7.112" y1="0" x2="8.128" y2="0" width="0.1524" layer="21"/>
<wire x1="2.5654" y1="0.127" x2="3.2258" y2="0.127" width="0.1524" layer="21" curve="180"/>
<wire x1="1.905" y1="0.127" x2="2.5654" y2="0.127" width="0.1524" layer="21" curve="-180"/>
<wire x1="8.89" y1="3.683" x2="11.938" y2="3.683" width="0.1524" layer="21"/>
<wire x1="8.89" y1="3.683" x2="6.35" y2="3.683" width="0.1524" layer="51"/>
<wire x1="3.81" y1="3.683" x2="6.35" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.683" x2="1.27" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="3.683" x2="1.27" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.683" x2="-3.81" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="3.683" x2="-7.112" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="3.683" x2="-6.35" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.683" x2="-6.35" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="3.683" x2="-8.89" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="-2.921" x2="-7.112" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="-2.921" x2="11.938" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="3.683" x2="-7.112" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="0.762" x2="-7.112" y2="-2.921" width="0.1524" layer="21"/>
<pad name="+" x="-7.62" y="2.54" drill="1.6002" shape="long" rot="R90"/>
<pad name="AC1" x="-2.54" y="2.54" drill="1.6002" shape="long" rot="R90"/>
<pad name="AC2" x="2.54" y="2.54" drill="1.6002" shape="long" rot="R90"/>
<pad name="-" x="7.62" y="2.54" drill="1.6002" shape="long" rot="R90"/>
<text x="-11.811" y="4.445" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-11.938" y1="-3.048" x2="12.065" y2="3.81" layer="43"/>
</package>
<package name="RB1A">
<description>&lt;b&gt;RECTIFIER&lt;/b&gt;&lt;p&gt;
1 A</description>
<wire x1="-4.064" y1="2.54" x2="-4.064" y2="-2.54" width="0.1524" layer="21" curve="-297.029507"/>
<wire x1="-4.064" y1="-2.54" x2="-4.064" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-0.254" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="2.032" x2="-0.762" y2="3.048" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-2.54" x2="-2.2606" y2="-2.54" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.2606" y1="-2.54" x2="-1.6002" y2="-2.54" width="0.1524" layer="51" curve="180"/>
<wire x1="1.524" y1="2.54" x2="2.1844" y2="2.54" width="0.1524" layer="51" curve="-180"/>
<wire x1="2.1844" y1="2.54" x2="2.8448" y2="2.54" width="0.1524" layer="51" curve="180"/>
<pad name="+" x="-2.54" y="2.54" drill="1.016"/>
<pad name="AC1" x="2.54" y="2.54" drill="1.016" shape="octagon"/>
<pad name="-" x="2.54" y="-2.54" drill="1.016" shape="octagon"/>
<pad name="AC2" x="-2.54" y="-2.54" drill="1.016" shape="octagon"/>
<text x="-4.6736" y="-2.5146" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.3782" y="-0.6604" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.445" y1="-4.445" x2="4.445" y2="4.445" layer="43"/>
</package>
<package name="S41">
<description>&lt;b&gt;SEMIKRON RECTIFIER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.1524" layer="21"/>
<wire x1="7.62" y1="7.62" x2="-7.62" y2="7.62" width="0.1524" layer="21"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="1.905" y2="-5.08" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.905" y1="-5.08" x2="3.175" y2="-5.08" width="0.1524" layer="21" curve="180"/>
<wire x1="-3.175" y1="5.08" x2="-1.905" y2="5.08" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.905" y1="5.08" x2="-0.635" y2="5.08" width="0.1524" layer="21" curve="180"/>
<wire x1="1.905" y1="5.08" x2="3.175" y2="5.08" width="0.1524" layer="21"/>
<wire x1="2.54" y1="5.715" x2="2.54" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-5.08" x2="-1.905" y2="-5.08" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.032" width="0.1524" layer="21"/>
<pad name="-" x="-5.08" y="-5.08" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="AC2" x="5.08" y="-5.08" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="+" x="5.08" y="5.08" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="AC1" x="-5.08" y="5.08" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-3.81" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-7.62" y1="-7.62" x2="7.62" y2="7.62" layer="43"/>
</package>
<package name="S51">
<description>&lt;b&gt;SEMIKRON RECTIFIER&lt;/b&gt;</description>
<wire x1="-8.89" y1="-8.89" x2="-8.89" y2="8.89" width="0.1524" layer="21"/>
<wire x1="8.89" y1="8.89" x2="-8.89" y2="8.89" width="0.1524" layer="21"/>
<wire x1="8.89" y1="8.89" x2="8.89" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-8.89" x2="8.89" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-6.35" x2="3.175" y2="-6.35" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.175" y1="-6.35" x2="4.445" y2="-6.35" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.445" y1="6.35" x2="-3.175" y2="6.35" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.175" y1="6.35" x2="-1.905" y2="6.35" width="0.1524" layer="21" curve="180"/>
<wire x1="3.175" y1="6.35" x2="4.445" y2="6.35" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-6.35" x2="-3.175" y2="-6.35" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.032" width="0.1524" layer="21"/>
<pad name="-" x="-6.35" y="-6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="AC2" x="6.35" y="-6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="+" x="6.35" y="6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="AC1" x="-6.35" y="6.35" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-8.89" y="9.271" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.445" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SKB">
<description>&lt;b&gt;SEMIKRON RECTIFIER&lt;/b&gt;</description>
<wire x1="-8.763" y1="-3.175" x2="6.477" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-3.175" x2="8.763" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="8.763" y1="3.175" x2="6.477" y2="3.175" width="0.1524" layer="21"/>
<wire x1="6.477" y1="3.175" x2="-8.763" y2="3.175" width="0.1524" layer="21"/>
<wire x1="8.763" y1="-3.175" x2="8.763" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.763" y1="1.016" x2="8.763" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.763" y1="1.016" x2="8.763" y2="3.175" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-3.175" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-3.175" x2="-8.763" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="1.016" x2="-8.763" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.763" y1="1.016" x2="-8.763" y2="3.175" width="0.1524" layer="21"/>
<wire x1="7.112" y1="-1.778" x2="8.128" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="-1.778" x2="-6.223" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-1.27" x2="-6.731" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.778" x2="-3.302" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.302" y1="-1.778" x2="-2.54" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="1.016" y1="-1.778" x2="1.778" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.778" y1="-1.778" x2="2.54" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<pad name="+" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="AC2" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="-" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.763" y="3.683" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="3.683" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.89" y1="-3.302" x2="8.89" y2="3.302" layer="43"/>
</package>
<package name="SKB32">
<description>&lt;b&gt;SEMIKRON RECTIFIER&lt;/b&gt;</description>
<wire x1="-21.463" y1="-3.556" x2="13.208" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="18.542" y1="-3.556" x2="18.542" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-21.463" y1="3.556" x2="13.208" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-21.463" y1="3.556" x2="-21.463" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="13.208" y1="-3.556" x2="13.208" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.208" y1="-3.556" x2="18.542" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="13.208" y1="3.556" x2="18.542" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.032" x2="-2.794" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.794" y1="-2.032" x2="-1.778" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.826" y1="-2.032" x2="5.842" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.81" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="10.414" y1="-2.032" x2="11.684" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="-2.032" x2="-11.811" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-2.667" x2="-12.446" y2="-1.397" width="0.1524" layer="21"/>
<pad name="+" x="-13.97" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC1" x="-3.9624" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC2" x="3.5306" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="-" x="11.0236" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-21.463" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.43" y="3.937" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-21.59" y1="-3.81" x2="19.05" y2="3.81" layer="43"/>
</package>
<package name="SKB50">
<description>&lt;b&gt;SEMIKRON RECTIFIER&lt;/b&gt;</description>
<wire x1="13.208" y1="-3.175" x2="13.208" y2="3.175" width="0.1524" layer="21"/>
<wire x1="13.208" y1="-3.175" x2="17.907" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="13.208" y1="3.175" x2="17.907" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.032" x2="-2.794" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="-2.794" y1="-2.032" x2="-1.778" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.826" y1="-2.032" x2="5.842" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.81" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21" curve="180"/>
<wire x1="10.414" y1="-2.032" x2="11.684" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="-2.032" x2="-11.811" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-2.667" x2="-12.446" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="18.542" y1="-0.889" x2="18.542" y2="0.889" width="0.1524" layer="21"/>
<wire x1="17.907" y1="3.175" x2="18.034" y2="3.048" width="0.1524" layer="21"/>
<wire x1="18.034" y1="3.048" x2="18.542" y2="0.889" width="0.1524" layer="21"/>
<wire x1="17.907" y1="-3.175" x2="18.034" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="18.034" y1="-3.048" x2="18.542" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="13.208" y1="3.175" x2="-20.828" y2="3.175" width="0.1524" layer="21"/>
<wire x1="13.208" y1="-3.175" x2="-20.828" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-21.463" y1="0.889" x2="-21.463" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-3.175" x2="-20.955" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-3.048" x2="-21.463" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="3.175" x2="-20.955" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="3.048" x2="-21.463" y2="0.889" width="0.1524" layer="21"/>
<pad name="+" x="-13.97" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC1" x="-3.9624" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC2" x="3.5306" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="-" x="11.0236" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-20.828" y="3.556" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.43" y="3.556" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-18.415" y1="-3.175" x2="15.875" y2="3.175" layer="43"/>
</package>
<package name="SKBB">
<description>&lt;b&gt;SEMIKRON RECTIFIER&lt;/b&gt;</description>
<wire x1="-9.652" y1="2.54" x2="-9.652" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.652" y1="-2.54" x2="5.842" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.398" y1="2.54" x2="9.398" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.398" y1="2.54" x2="5.842" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.54" x2="5.842" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.54" x2="-9.652" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.54" x2="9.398" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-1.778" x2="1.397" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.397" y1="-1.778" x2="2.413" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="-8.382" y1="-1.778" x2="-7.366" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="-9.398" y1="-1.778" x2="-8.382" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.826" y1="-1.778" x2="-3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-2.286" x2="-4.318" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-1.778" x2="7.874" y2="-1.778" width="0.1524" layer="21"/>
<pad name="AC1" x="-7.62" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="+" x="-2.6162" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="AC2" x="2.3876" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="-" x="7.3914" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-9.652" y="3.048" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="3.048" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-9.525" y1="-2.54" x2="9.525" y2="2.54" layer="43"/>
</package>
<package name="B40S">
<description>&lt;b&gt;Surface Mount Si-Brückengleichrichter, Si-Bridge Rectifiers&lt;/b&gt;&lt;p&gt;
Source: http://www.diotec.com/pdf/b40s.pdf</description>
<wire x1="-4.05" y1="3.1" x2="4.05" y2="3.1" width="0.254" layer="21"/>
<wire x1="4.05" y1="3.1" x2="4.05" y2="-3.1" width="0.254" layer="21"/>
<wire x1="4.05" y1="-3.1" x2="-4.05" y2="-3.1" width="0.254" layer="21"/>
<wire x1="-4.05" y1="-3.1" x2="-4.05" y2="3.1" width="0.254" layer="21"/>
<smd name="+" x="-2.55" y="-4.5" dx="1.5" dy="1.7" layer="1"/>
<smd name="-" x="2.55" y="-4.5" dx="1.5" dy="1.7" layer="1"/>
<smd name="AC2" x="2.55" y="4.5" dx="1.5" dy="1.7" layer="1" rot="R180"/>
<smd name="AC1" x="-2.55" y="4.5" dx="1.5" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="0.635" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-1.905" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.2" y1="-5.1" x2="-1.9" y2="-3.2" layer="51"/>
<rectangle x1="1.9" y1="-5.1" x2="3.2" y2="-3.2" layer="51"/>
<rectangle x1="1.9" y1="3.2" x2="3.2" y2="5.1" layer="51" rot="R180"/>
<rectangle x1="-3.2" y1="3.2" x2="-1.9" y2="5.1" layer="51" rot="R180"/>
</package>
<package name="TO-269AA">
<description>&lt;b&gt;Surface Mount Si-Bridge-Rectifiers&lt;/b&gt; MiniDIL 4.7 x 3.9 mm&lt;p&gt;
Si-Brückengleichrichter für die Oberflächenmontage&lt;br&gt;


Source: http://www.diotec.com/pdf/s40.pdf</description>
<wire x1="-2.25" y1="1.825" x2="2.175" y2="1.825" width="0.254" layer="21"/>
<wire x1="2.175" y1="1.825" x2="2.175" y2="-1.825" width="0.254" layer="21"/>
<wire x1="2.175" y1="-1.825" x2="-2.01" y2="-1.825" width="0.254" layer="21"/>
<wire x1="-2.01" y1="-1.825" x2="-2.25" y2="-1.825" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-1.825" x2="-2.25" y2="1.825" width="0.254" layer="21"/>
<wire x1="-2.01" y1="-1.825" x2="-2.01" y2="1.825" width="0.254" layer="21"/>
<smd name="+" x="-1.28" y="-2.855" dx="1" dy="1.25" layer="1"/>
<smd name="-" x="1.28" y="-2.855" dx="1" dy="1.25" layer="1"/>
<smd name="AC2" x="1.28" y="2.855" dx="1" dy="1.25" layer="1" rot="R180"/>
<smd name="AC1" x="-1.28" y="2.855" dx="1" dy="1.25" layer="1" rot="R180"/>
<text x="-2.54" y="-1.905" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-1.905" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.625" y1="-3.25" x2="-0.925" y2="-1.93" layer="51"/>
<rectangle x1="0.925" y1="-3.25" x2="1.625" y2="-1.93" layer="51"/>
<rectangle x1="0.925" y1="1.93" x2="1.625" y2="3.25" layer="51" rot="R180"/>
<rectangle x1="-1.625" y1="1.93" x2="-0.925" y2="3.25" layer="51" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="DB">
<wire x1="-1.905" y1="-3.175" x2="-4.064" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-3.175" x2="-2.286" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-2.7178" y1="-4.0386" x2="-0.9398" y2="-2.2606" width="0.254" layer="94"/>
<wire x1="-1.905" y1="3.175" x2="-4.064" y2="2.794" width="0.254" layer="94"/>
<wire x1="-1.905" y1="3.175" x2="-2.286" y2="1.016" width="0.254" layer="94"/>
<wire x1="-2.7178" y1="4.0386" x2="-1.0668" y2="2.3876" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="2.794" y2="4.064" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="1.016" y2="2.286" width="0.254" layer="94"/>
<wire x1="2.3622" y1="1.016" x2="4.1402" y2="2.794" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.905" x2="2.794" y2="-4.064" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.905" x2="1.016" y2="-2.286" width="0.254" layer="94"/>
<wire x1="2.3622" y1="-1.0668" x2="4.1402" y2="-2.8448" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="3.175" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="-1.905" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-3.2766" y1="-1.8034" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="-2.794" x2="-2.286" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-3.2766" y2="1.8034" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="2.794" x2="-2.286" y2="1.016" width="0.254" layer="94"/>
<wire x1="-1.905" y1="3.175" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="1.8034" y2="3.2766" width="0.1524" layer="94"/>
<wire x1="1.016" y1="2.286" x2="2.794" y2="4.064" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.8034" y2="-3.2766" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-2.286" x2="2.794" y2="-4.064" width="0.254" layer="94"/>
<text x="5.08" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="AC1" x="0" y="5.08" visible="off" length="point" direction="pas" rot="R270"/>
<pin name="+" x="5.08" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<pin name="AC2" x="0" y="-5.08" visible="off" length="point" direction="pas" rot="R90"/>
<pin name="-" x="-5.08" y="0" visible="off" length="point" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RECTIFIER-" prefix="B">
<description>&lt;b&gt;Rectifier&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="DB" x="0" y="0"/>
</gates>
<devices>
<device name="1KAB" package="1KAB">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2KBB" package="2KBB">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2KBB-R" package="2KBB-R">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2KBP" package="2KBP">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DIL" package="B-DIL">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DSI32" package="DSI32">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DSI32A" package="DSI32A">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FB100" package="FB100">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FB15" package="FB15">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FB15A" package="FB15A">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FB32" package="FB32">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FBM" package="FBM">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FBP1,5" package="FBP1,5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FBU4" package="FBU4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GBPC1" package="GBPC1">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GBP6" package="GBPC6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GBPC80X" package="GBPC80X">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GBU4" package="GBU4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GBU4S" package="GBU4S">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KBL" package="KBL">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KBU" package="KBU">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RB1A" package="RB1A">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S41" package="S41">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S51" package="S51">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SKB" package="SKB">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SKB32" package="SKB32">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SKB50" package="SKB50">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SKBB" package="SKBB">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B40S" package="B40S">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S40" package="TO-269AA">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S80" package="TO-269AA">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S125" package="TO-269AA">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S250" package="TO-269AA">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S380" package="TO-269AA">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S500" package="TO-269AA">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="AC1"/>
<connect gate="G$1" pin="AC2" pad="AC2"/>
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
<part name="FRAME1" library="frames" deviceset="FRAME_B_L" device=""/>
<part name="B1" library="rectifier" deviceset="RECTIFIER-" device="SKBB"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="325.12" y="0"/>
<instance part="B1" gate="G$1" x="101.6" y="223.52"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
