<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="FileExchange" generation="1" functional="0" release="0" Id="5e8ee63a-9f87-420d-90f9-9fa046989a01" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="FileExchangeGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="FileExchange.WebUpload:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/FileExchange/FileExchangeGroup/LB:FileExchange.WebUpload:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="FileExchange.WebUpload:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/FileExchange/FileExchangeGroup/MapFileExchange.WebUpload:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="FileExchange.WebUpload:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/FileExchange/FileExchangeGroup/MapFileExchange.WebUpload:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="FileExchange.WebUploadInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/FileExchange/FileExchangeGroup/MapFileExchange.WebUploadInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:FileExchange.WebUpload:Endpoint1">
          <toPorts>
            <inPortMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUpload/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapFileExchange.WebUpload:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUpload/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapFileExchange.WebUpload:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUpload/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapFileExchange.WebUploadInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUploadInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="FileExchange.WebUpload" generation="1" functional="0" release="0" software="C:\Users\Neil\Documents\GitHub\CloudExchange\FileExchange\csx\Debug\roles\FileExchange.WebUpload" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="768" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;FileExchange.WebUpload&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;FileExchange.WebUpload&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUploadInstances" />
            <sCSPolicyFaultDomainMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUploadFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="FileExchange.WebUploadFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="FileExchange.WebUploadInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="32266fec-a83f-4856-bcbc-0c79527dd330" ref="Microsoft.RedDog.Contract\ServiceContract\FileExchangeContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="ce3ce9a0-8850-4793-8c65-7a92d3dcd394" ref="Microsoft.RedDog.Contract\Interface\FileExchange.WebUpload:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUpload:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>