<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="FileExchange" generation="1" functional="0" release="0" Id="b680569c-6f56-40ad-8205-cfb3b4b202d9" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
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
        <aCS name="FileExchange.WebUploadInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/FileExchange/FileExchangeGroup/MapFileExchange.WebUploadInstances" />
          </maps>
        </aCS>
        <aCS name="FileExchange.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/FileExchange/FileExchangeGroup/MapFileExchange.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="FileExchange.WorkerInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/FileExchange/FileExchangeGroup/MapFileExchange.WorkerInstances" />
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
        <map name="MapFileExchange.WebUploadInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUploadInstances" />
          </setting>
        </map>
        <map name="MapFileExchange.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/FileExchange/FileExchangeGroup/FileExchange.Worker/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapFileExchange.WorkerInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WorkerInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="FileExchange.WebUpload" generation="1" functional="0" release="0" software="c:\users\neil\documents\visual studio 2012\Projects\FileExchange\FileExchange\csx\Debug\roles\FileExchange.WebUpload" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;FileExchange.WebUpload&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;FileExchange.WebUpload&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;FileExchange.Worker&quot; /&gt;&lt;/m&gt;" />
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
        <groupHascomponents>
          <role name="FileExchange.Worker" generation="1" functional="0" release="0" software="c:\users\neil\documents\visual studio 2012\Projects\FileExchange\FileExchange\csx\Debug\roles\FileExchange.Worker" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="14336" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;FileExchange.Worker&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;FileExchange.WebUpload&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;FileExchange.Worker&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WorkerInstances" />
            <sCSPolicyFaultDomainMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WorkerFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="FileExchange.WebUploadFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="FileExchange.WorkerFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="FileExchange.WebUploadInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="FileExchange.WorkerInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="290a63ad-9ada-469d-a9d6-f68ed1931d6b" ref="Microsoft.RedDog.Contract\ServiceContract\FileExchangeContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="063f3128-6ddc-4eb7-8bba-43df80440366" ref="Microsoft.RedDog.Contract\Interface\FileExchange.WebUpload:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/FileExchange/FileExchangeGroup/FileExchange.WebUpload:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>