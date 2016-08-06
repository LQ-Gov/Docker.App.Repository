ram>
      <exception cref="T:System.ArgumentException">
        <paramref name="state" /> 参数不是有效的 <see cref="T:System.Security.Permissions.PermissionState" /> 值。</exception>
    </member>
    <member name="M:System.ServiceProcess.ServiceControllerPermission.#ctor(System.ServiceProcess.ServiceControllerPermissionAccess,System.String,System.String)">
      <summary>用指定的权限访问级别、服务所驻留的计算机的名称和向系统标识该服务的简称初始化 <see cref="T:System.ServiceProcess.ServiceControllerPermission" /> 类的新实例。</summary>
      <param name="permissionAccess">
        <see cref="T:System.ServiceProcess.ServiceControllerPermissionAccess" /> 值之一。</param>
      <param name="machineName">服务所驻留的计算机的名称。</param>
      <param name="serviceName">向系统标识该服务的简称。</param>
    </member>
    <member name="M:System.ServiceProcess.ServiceControllerPermission.#ctor(System.ServiceProcess.ServiceControllerPermissionEntry[])">
      <summary>用指定的权限项初始化 <see cref="T:System.ServiceProcess.ServiceControllerPermission" /> 类的新实例。</summary>
      <param name="permissionAccessEntries">An array of <see cref="T:System.ServiceProcess.ServiceControllerPermissionEntry" /> objects.<see cref="P:System.ServiceProcess.ServiceControllerPermission.PermissionEntries" /> 属性被设置为该值。</param>
      <exception cref="T:System.ArgumentNullException">
        <paramref name="permissionAccessEntries " /> 为 null。</exception>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermission.PermissionEntries">
      <summary>获取此权限请求的权限项集合。</summary>
      <returns>一个 <see cref="T:System.ServiceProcess.ServiceControllerPermissionEntryCollection" />，它包含此权限请求的权限项。</returns>
    </member>
    <member name="T:System.ServiceProcess.ServiceControllerPermissionAccess">
      <summary>Defines access levels used by <see cref="T:System.ServiceProcess.ServiceController" /> permission classes.</summary>
    </member>
    <member name="F:System.ServiceProcess.ServiceControllerPermissionAccess.None">
      <summary>The <see cref="T:System.ServiceProcess.ServiceController" /> has no permissions.</summary>
    </member>
    <member name="F:System.ServiceProcess.ServiceControllerPermissionAccess.Browse">
      <summary>
        <see cref="T:System.ServiceProcess.ServiceController" /> 可以连接到现有服务，但不能控制现有服务。</summary>
    </member>
    <member name="F:System.ServiceProcess.ServiceControllerPermissionAccess.Control">
      <summary>
        <see cref="T:System.ServiceProcess.ServiceController" /> 可以连接到并控制现有服务。</summary>
    </member>
    <member name="T:System.ServiceProcess.ServiceControllerPermissionAttribute">
      <summary>允许声明性的服务控制器权限检查。</summary>
    </member>
    <member name="M:System.ServiceProcess.ServiceControllerPermissionAttribute.#ctor(System.Security.Permissions.SecurityAction)">
      <summary>初始化 <see cref="T:System.ServiceProcess.ServiceControllerPermissionAttribute" /> 类的新实例。</summary>
      <param name="action">
        <see cref="T:System.Security.Permissions.SecurityAction" /> 值之一。</param>
    </member>
    <member name="M:System.ServiceProcess.ServiceControllerPermissionAttribute.CreatePermission">
      <summary>Creates the permission based on the requested access levels that are set through the <see cref="P:System.ServiceProcess.ServiceControllerPermissionAttribute.PermissionAccess" /> property on the attribute.</summary>
      <returns>一个 <see cref="T:System.Security.IPermission" />，它表示创建的权限。</returns>
      <PermissionSet>
        <IPermission class="System.Security.Permissions.SecurityPermission, mscorlib, Version=2.0.3600.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" version="1" Flags="UnmanagedCode, ControlEvidence" />
      </PermissionSet>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermissionAttribute.MachineName">
      <summary>获取或设置服务所驻留的计算机的名称。</summary>
      <returns>计算机的名称，该计算机正在运行与 <see cref="T:System.ServiceProcess.ServiceController" /> 关联的服务。</returns>
      <exception cref="T:System.ArgumentException">
        <see cref="P:System.ServiceProcess.ServiceControllerPermissionAttribute.MachineName" /> 语法无效。</exception>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermissionAttribute.PermissionAccess">
      <summary>获取或设置权限请求中使用的访问级别。</summary>
      <returns>
        <see cref="T:System.ServiceProcess.ServiceControllerPermissionAccess" /> 值的按位组合。</returns>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermissionAttribute.ServiceName">
      <summary>获取或设置向系统标识该服务的简称。</summary>
      <returns>服务的名称。</returns>
      <exception cref="T:System.ArgumentNullException">
        <see cref="P:System.ServiceProcess.ServiceControllerPermissionAttribute.ServiceName" /> 为 null。</exception>
      <exception cref="T:System.ArgumentException">
        <see cref="P:System.ServiceProcess.ServiceControllerPermissionAttribute.ServiceName" /> 属性的语法无效。</exception>
    </member>
    <member name="T:System.ServiceProcess.ServiceControllerPermissionEntry">
      <summary>定义为 <see cref="T:System.ServiceProcess.ServiceController" /> 设置的代码访问安全权限的最小单位。</summary>
    </member>
    <member name="M:System.ServiceProcess.ServiceControllerPermissionEntry.#ctor">
      <summary>初始化 <see cref="T:System.ServiceProcess.ServiceControllerPermissionEntry" /> 类的新实例。</summary>
    </member>
    <member name="M:System.ServiceProcess.ServiceControllerPermissionEntry.#ctor(System.ServiceProcess.ServiceControllerPermissionAccess,System.String,System.String)">
      <summary>用指定的权限访问级别、计算机的名称和标识该服务的简称初始化 <see cref="T:System.ServiceProcess.ServiceControllerPermissionEntry" /> 类的新实例。</summary>
      <param name="permissionAccess">
        <see cref="T:System.ServiceProcess.ServiceControllerPermissionAccess" /> 值之一。</param>
      <param name="machineName">服务所驻留的计算机的名称。</param>
      <param name="serviceName">向系统标识该服务的简称。</param>
      <exception cref="T:System.ArgumentNullException">
        <paramref name="serviceName" /> 为 null。</exception>
      <exception cref="T:System.ArgumentException">
        <paramref name="machineName " /> 无效。- 或 -<paramref name="serviceName " /> 无效。</exception>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermissionEntry.MachineName">
      <summary>获取服务所驻留的计算机的名称。</summary>
      <returns>计算机的名称，该计算机正在运行与 <see cref="T:System.ServiceProcess.ServiceController" /> 关联的服务。</returns>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermissionEntry.PermissionAccess">
      <summary>获取权限请求中使用的访问级别。</summary>
      <returns>
        <see cref="T:System.ServiceProcess.ServiceControllerPermissionAccess" /> 值的按位组合。</returns>
    </member>
    <member name="P:System.ServiceProcess.ServiceControllerPermissionEntry.S