�预处理的特殊键。</summary>
      <returns>如果指定的键是常规输入键，则为 true；否则为 false。</returns>
      <param name="keyData">
        <see cref="T:System.Windows.Forms.Keys" /> 值之一。</param>
    </member>
    <member name="P:System.Windows.Forms.TabControl.ItemSize">
      <summary>获取或设置控件的选项卡的大小。</summary>
      <returns>
        <see cref="T:System.Drawing.Size" />，它表示选项卡的大小。默认为自动调整选项卡的大小以适应选项卡上的图标和标签。</returns>
      <exception cref="T:System.ArgumentOutOfRangeException">
        <see cref="T:System.Drawing.Size" /> 的宽度或高度小于 0。</exception>
      <filterpriority>1</filterpriority>
      <PermissionSet>
        <IPermission class="System.Security.Permissions.EnvironmentPermission, mscorlib, Version=2.0.3600.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" version="1" Unrestricted="true" />
        <IPermission class="System.Security.Permissions.FileIOPermission, mscorlib, Version=2.0.3600.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" version="1" Unrestricted="true" />
        <IPermission class="System.Security.Permissions.SecurityPermission, mscorlib, Version=2.0.3600.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" version="1" Flags="UnmanagedCode, ControlEvidence" />
        <IPermission class="System.Diagnostics.PerformanceCounterPermission, System, Version=2.0.3600.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" version="1" Unrestricted="true" />
      </PermissionSet>
    </member>
    <member name="P:System.Windows.Forms.TabControl.Multiline">
      <summary>获取或设置一个值，该值指示是否可以显示一行以上的选项卡。</summary>
      <returns>如果可以显示一行以上的选项卡，则为 true；否则为 false。默认为 false。</returns>
      <filterpriority>2</filterpriority>
      <PermissionSet>
        <IPermission class="System.Security.Permissions.Environme