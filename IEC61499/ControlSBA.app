<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE SubAppType SYSTEM "../LibraryElement.dtd">
<SubAppType GUID="78c08153-a2f7-4f2a-8a7c-f208f26656f9" Name="ControlSBA" Comment="Subapplication " Namespace="Main">
  <Attribute Name="Configuration.FB.IDCounter" Value="13" />
  <Identification Standard="61499-2" />
  <VersionInfo Organization="nxtControl GmBH" Version="0.0" Author="vv263" Date="7/26/2023" Remarks="template" />
  <SubAppInterfaceList>
    <SubAppEventInputs>
      <SubAppEvent Name="INIT" />
      <SubAppEvent Name="REQ" />
    </SubAppEventInputs>
    <SubAppEventOutputs>
      <SubAppEvent Name="INITO" />
      <SubAppEvent Name="CNF" />
    </SubAppEventOutputs>
    <InputVars>
      <VarDeclaration Name="OnFloor0" Type="BOOL" />
      <VarDeclaration Name="OnFloor1" Type="BOOL" />
      <VarDeclaration Name="OnFloor2" Type="BOOL" />
      <VarDeclaration Name="ButtonOn0" Type="BOOL" />
      <VarDeclaration Name="ButtonOn1" Type="BOOL" />
      <VarDeclaration Name="ButtonOn2" Type="BOOL" />
      <VarDeclaration Name="ButtonFor0" Type="BOOL" />
      <VarDeclaration Name="ButtonFor1" Type="BOOL" />
      <VarDeclaration Name="ButtonFor2" Type="BOOL" />
      <VarDeclaration Name="DoorClosed0" Type="BOOL" />
      <VarDeclaration Name="DoorClosed1" Type="BOOL" />
      <VarDeclaration Name="DoorClosed2" Type="BOOL" />
      <VarDeclaration Name="DoorOpened0" Type="BOOL" />
      <VarDeclaration Name="DoorOpened1" Type="BOOL" />
      <VarDeclaration Name="DoorOpened2" Type="BOOL" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="liftUp" Type="BOOL" />
      <VarDeclaration Name="liftDown" Type="BOOL" />
      <VarDeclaration Name="door0" Type="BOOL" />
      <VarDeclaration Name="door1" Type="BOOL" />
      <VarDeclaration Name="door2" Type="BOOL" />
      <VarDeclaration Name="LightON_Button0" Type="BOOL" />
      <VarDeclaration Name="LightON_Button1" Type="BOOL" />
      <VarDeclaration Name="LightON_Button2" Type="BOOL" />
      <VarDeclaration Name="LightON_Panel0" Type="BOOL" />
      <VarDeclaration Name="LightON_Panel1" Type="BOOL" />
      <VarDeclaration Name="LightON_Panel2" Type="BOOL" />
    </OutputVars>
  </SubAppInterfaceList>
  <SubAppNetwork>
    <FB ID="9" Name="Motor" Type="CabinControl" x="2640" y="120" Namespace="Main" />
    <FB ID="10" Name="Doors" Type="DoorControl" x="4480" y="720" Namespace="Main" />
    <FB ID="11" Name="DLY" Type="E_DELAY" x="5940" y="780" Namespace="IEC61499.Standard">
      <Parameter Name="DT" Value="T#3000ms" />
    </FB>
    <FB ID="12" Name="MRG" Type="E_MERGE" x="5660" y="180" Namespace="IEC61499.Standard" />
    <FB ID="13" Name="BTNs" Type="Btn_lock" x="780" y="140" Namespace="Main" />
    <EventConnections>
      <Connection Source="Doors.T1" Destination="DLY.START" dx1="90" />
      <Connection Source="DLY.EO" Destination="Doors.T1exp" dx1="48.5" dx2="90" dy="-170" />
      <Connection Source="REQ" Destination="BTNs.REQ" />
      <Connection Source="INIT" Destination="BTNs.INIT" />
      <Connection Source="Motor.CNF" Destination="Doors.REQ" dx1="784.5623">
        <AvoidsNodes>false</AvoidsNodes>
      </Connection>
      <Connection Source="Motor.INITO" Destination="Doors.INIT" dx1="944.5623">
        <AvoidsNodes>false</AvoidsNodes>
      </Connection>
      <Connection Source="Motor.CNF" Destination="MRG.EI1" />
      <Connection Source="MRG.EO" Destination="CNF" />
      <Connection Source="Doors.INITO" Destination="INITO" dx1="50" />
      <Connection Source="Doors.CNF" Destination="MRG.EI2" dx1="74.5625" />
      <Connection Source="BTNs.INITO" Destination="Motor.INIT" dx1="53.97925" />
      <Connection Source="BTNs.CNF" Destination="Motor.REQ" dx1="73.97925" />
      <Connection Source="Motor.RST" Destination="BTNs.RESET" dx1="46.6665" dx2="90" dy="-230" />
    </EventConnections>
    <DataConnections>
      <Connection Source="Doors.allClosed" Destination="Motor.allClosed" dx1="55.7085" dx2="120" dy="760">
        <AvoidsNodes>false</AvoidsNodes>
      </Connection>
      <Connection Source="OnFloor0" Destination="Motor.OnFloor0" />
      <Connection Source="OnFloor1" Destination="Motor.OnFloor1" />
      <Connection Source="OnFloor2" Destination="Motor.OnFloor2" />
      <Connection Source="DoorClosed0" Destination="Doors.DoorClosed0" />
      <Connection Source="DoorClosed1" Destination="Doors.DoorClosed1" />
      <Connection Source="DoorClosed2" Destination="Doors.DoorClosed2" />
      <Connection Source="DoorOpened0" Destination="Doors.DoorOpened0" />
      <Connection Source="DoorOpened1" Destination="Doors.DoorOpened1" />
      <Connection Source="DoorOpened2" Destination="Doors.DoorOpened2" />
      <Connection Source="Motor.stoppd" Destination="Doors.Static" dx1="216.6665">
        <AvoidsNodes>false</AvoidsNodes>
      </Connection>
      <Connection Source="Motor.y" Destination="Doors.floor" dx1="46.6665" />
      <Connection Source="Motor.liftUp" Destination="liftUp" />
      <Connection Source="Motor.liftDown" Destination="liftDown" />
      <Connection Source="Doors.door0" Destination="door0" />
      <Connection Source="Doors.door1" Destination="door1" />
      <Connection Source="Doors.door2" Destination="door2" />
      <Connection Source="ButtonOn0" Destination="BTNs.B1" />
      <Connection Source="ButtonOn1" Destination="BTNs.B2" />
      <Connection Source="ButtonOn2" Destination="BTNs.B3" />
      <Connection Source="ButtonFor0" Destination="BTNs.B4" />
      <Connection Source="ButtonFor1" Destination="BTNs.B5" />
      <Connection Source="ButtonFor2" Destination="BTNs.B6" />
      <Connection Source="BTNs.L1" Destination="LightON_Button0" />
      <Connection Source="BTNs.L2" Destination="LightON_Button1" />
      <Connection Source="BTNs.L3" Destination="LightON_Button2" />
      <Connection Source="BTNs.L4" Destination="LightON_Panel0" />
      <Connection Source="BTNs.L5" Destination="LightON_Panel1" />
      <Connection Source="BTNs.L6" Destination="LightON_Panel2" />
      <Connection Source="BTNs.L1" Destination="Motor.ButtonOn0">
        <Points>
          <Points>
            <X>294.0052</X>
            <Y>125</Y>
          </Points>
          <Points>
            <X>329.0052</X>
            <Y>125</Y>
          </Points>
          <Points>
            <X>329.0052</X>
            <Y>112.5</Y>
          </Points>
          <Points>
            <X>507.5</X>
            <Y>112.5</Y>
          </Points>
          <Points>
            <X>507.5</X>
            <Y>165</Y>
          </Points>
          <Points>
            <X>655</X>
            <Y>165</Y>
          </Points>
        </Points>
      </Connection>
      <Connection Source="BTNs.L2" Destination="Motor.ButtonOn1">
        <Points>
          <Points>
            <X>294.0052</X>
            <Y>140</Y>
          </Points>
          <Points>
            <X>324.0052</X>
            <Y>140</Y>
          </Points>
          <Points>
            <X>324.0052</X>
            <Y>212.5</Y>
          </Points>
          <Points>
            <X>492.5</X>
            <Y>212.5</Y>
          </Points>
          <Points>
            <X>492.5</X>
            <Y>180</Y>
          </Points>
          <Points>
            <X>655</X>
            <Y>180</Y>
          </Points>
        </Points>
      </Connection>
      <Connection Source="BTNs.L3" Destination="Motor.ButtonOn2">
        <Points>
          <Points>
            <X>294.0052</X>
            <Y>155</Y>
          </Points>
          <Points>
            <X>319.0052</X>
            <Y>155</Y>
          </Points>
          <Points>
            <X>319.0052</X>
            <Y>212.5</Y>
          </Points>
          <Points>
            <X>492.5</X>
            <Y>212.5</Y>
          </Points>
          <Points>
            <X>492.5</X>
            <Y>195</Y>
          </Points>
          <Points>
            <X>655</X>
            <Y>195</Y>
          </Points>
        </Points>
      </Connection>
      <Connection Source="BTNs.L4" Destination="Motor.ButtonFor0" dx1="80" />
      <Connection Source="BTNs.L5" Destination="Motor.ButtonFor1" dx1="60" />
      <Connection Source="BTNs.L6" Destination="Motor.ButtonFor2" dx1="40" />
      <Connection Source="BTNs.L6" Destination="Doors.ButtonFor2" dx1="40" />
      <Connection Source="BTNs.L5" Destination="Doors.ButtonFor1" dx1="60" />
      <Connection Source="BTNs.L4" Destination="Doors.ButtonFor0" dx1="80" />
      <Connection Source="BTNs.L3" Destination="Doors.ButtonAt2" dx1="100" />
      <Connection Source="BTNs.L2" Destination="Doors.ButtonAt1" dx1="120" />
      <Connection Source="BTNs.L1" Destination="Doors.ButtonAt0" dx1="140" />
    </DataConnections>
    <Input Name="INIT" x="220" y="152" Type="Event" />
    <Input Name="REQ" x="220" y="212" Type="Event" />
    <Input Name="ButtonOn0" x="140" y="472" Type="Data" />
    <Input Name="ButtonOn1" x="140" y="532" Type="Data" />
    <Input Name="ButtonOn2" x="140" y="592" Type="Data" />
    <Input Name="ButtonFor0" x="140" y="652" Type="Data" />
    <Input Name="ButtonFor1" x="140" y="712" Type="Data" />
    <Input Name="ButtonFor2" x="140" y="772" Type="Data" />
    <Input Name="OnFloor0" x="2080" y="452" Type="Data" />
    <Input Name="OnFloor1" x="2080" y="512" Type="Data" />
    <Input Name="OnFloor2" x="2080" y="572" Type="Data" />
    <Input Name="DoorClosed0" x="3840" y="1172" Type="Data" />
    <Input Name="DoorClosed1" x="3840" y="1232" Type="Data" />
    <Input Name="DoorClosed2" x="3840" y="1292" Type="Data" />
    <Input Name="DoorOpened0" x="3840" y="1352" Type="Data" />
    <Input Name="DoorOpened1" x="3840" y="1412" Type="Data" />
    <Input Name="DoorOpened2" x="3840" y="1472" Type="Data" />
    <Output Name="INITO" x="6380" y="672" Type="Event" />
    <Output Name="CNF" x="6320" y="192" Type="Event" />
    <Output Name="liftUp" x="3520" y="452" Type="Data" />
    <Output Name="liftDown" x="3500" y="512" Type="Data" />
    <Output Name="door0" x="5180" y="1052" Type="Data" />
    <Output Name="door1" x="5180" y="1112" Type="Data" />
    <Output Name="door2" x="5180" y="1172" Type="Data" />
    <Output Name="LightON_Button0" x="1380" y="472" Type="Data" />
    <Output Name="LightON_Button1" x="1380" y="532" Type="Data" />
    <Output Name="LightON_Button2" x="1300" y="592" Type="Data" />
    <Output Name="LightON_Panel0" x="1320" y="652" Type="Data" />
    <Output Name="LightON_Panel1" x="1320" y="712" Type="Data" />
    <Output Name="LightON_Panel2" x="1320" y="772" Type="Data" />
  </SubAppNetwork>
</SubAppType>