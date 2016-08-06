rns>
        <see cref="T:System.ServiceModel.Security.BasicSecurityProfileVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.Default">
      <summary>获取默认消息安全的版本信息。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.SecureConversationVersion">
      <summary>获取与消息安全版本相对应的 WS-SecureConversation 版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.Security.SecureConversationVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.SecurityPolicyVersion">
      <summary>获取与消息安全版本相对应的 WS-SecurityPolicy 版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.Security.SecurityPolicyVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.SecurityTokenVersion">
      <summary>获取与消息安全版本相对应的安全令牌版本。</summary>
      <returns>
        <see cref="T:System.IdentityModel.Selectors.SecurityTokenVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.SecurityVersion">
      <summary>获取与消息安全版本相对应的 WS-Security 版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.Security.SecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.TrustVersion">
      <summary>获取与消息安全版本相对应的 WS-Trust 版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.Security.TrustVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.WSSecurity10WSTrust13WSSecureConversation13WSSecurityPolicy12BasicSecurityProfile10">
      <summary>获取要求 Basic Security Profile 1.0 的消息安全版本，Basic Security Profile 1.0 以 WS-Security 1.0、WS-Trust 1.3、WS-SecureConversation 1.3 和 WS-SecurityPolicy 1.2 安全规范为基础。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.WSSecurity10WSTrustFebruary2005WSSecureConversationFebruary2005WSSecurityPolicy11BasicSecurityProfile10">
      <summary>获取要求 Basic Security Profile 1.0 的消息安全版本，Basic Security Profile 1.0 以 WS-Security 1.0、WS-Trust 2005 年 2 月版本、WS-SecureConversation 2005 年 2 月版本和 WS-SecurityPolicy 1.1 安全规范为基础。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.WSSecurity11WSTrust13WSSecureConversation13WSSecurityPolicy12">
      <summary>获取要求 WS-Security 1.1、WS-Trust 1.3、WS-SecureConversation 1.3 和 WS-SecurityPolicy 1.2 安全规范的消息安全版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.WSSecurity11WSTrust13WSSecureConversation13WSSecurityPolicy12BasicSecurityProfile10">
      <summary>获取要求 WS-Security1.1、WS-Trust 1.3、WS-SecureConversation 1.3、WS-SecurityPolicy 1.2 和 BasicSecurityProfile 1.0 安全规范的消息安全版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.WSSecurity11WSTrustFebruary2005WSSecureConversationFebruary2005WSSecurityPolicy11">
      <summary>获取要求 WS-Security 1.1、WS-Trust 2005 年 2 月版本、WS-SecureConversation 2005 年 2 月版本和 WS-SecurityPolicy 1.1 安全规范的消息安全版本。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="P:System.ServiceModel.MessageSecurityVersion.WSSecurity11WSTrustFebruary2005WSSecureConversationFebruary2005WSSecurityPolicy11BasicSecurityProfile10">
      <summary>获取要求基本安全配置文件的消息安全版本，基本安全配置文件以 WS-Security 1.1、WS-Trust 2005 年 2 月版本、WS-SecureConversation 2005 年 2 月版本和 WS-SecurityPolicy 1.1 安全规范为基础。</summary>
      <returns>
        <see cref="T:System.ServiceModel.MessageSecurityVersion" />。</returns>
    </member>
    <member name="T:System.ServiceModel.MsmqAuthenticationMode">
      <summary>指定用于绑定的身份验证的类型。</summary>
    </member>
    <member name="F:System.ServiceModel.MsmqAuthenticationMode.None">
      <summary>此绑定未使用任何安全性。</summary>
    </member>
    <member name="F:System.ServiceModel.MsmqAuthenticationMode.WindowsDomain">
      <summary>通过 Kerberos 进行身份验证。客户端和服务器必须连接到受信任域。</summary>
    </member>
    <member name="F:System.ServiceModel.MsmqAuthenticationMode.Certificate">
      <summary>客户端通过 X.509 证书进行身份验证。客户端证书必须显示在服务器的证书存储区中。</summary>
    </member>
    <member name="T:System.ServiceModel.MsmqBindingBase">
      <summary>
        <see cref="T:System.ServiceModel.NetMsmqBinding" /> 和 <see cref="T:System.ServiceModel.MsmqIntegration.MsmqIntegrationBinding" /> 的基类。</summary>
    </member>
    <member name="M:System.ServiceModel.MsmqBindingBase.#ctor">
      <summary>初始化 <see cref="T:System.ServiceModel.MsmqBindingBase" /> 类的新实例。</summary>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.CustomDeadLetterQueue">
      <summary>获取或设置一个 URI，该 URI 包含每个应用程序的死信队列（该队列用于放置已过期的消息以及传输或传递失败的消息）的位置。</summary>
      <returns>
        <see cref="T:System.Uri" />，其中包含每个应用程序的死信队列的位置。默认值为 null。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.DeadLetterQueue">
      <summary>获取或设置一个枚举值，该值指示要使用的死信队列的类型。</summary>
      <returns>一个 <see cref="T:System.ServiceModel.DeadLetterQueue" /> 枚举值，指示要使用的死信队列的类型。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.Durable">
      <summary>获取或设置一个值，该值指定此绑定处理的消息是持久的还是可变的。</summary>
      <returns>如果此绑定处理的消息是持久的，则为 true；如果消息为可变的，则为 false。默认值为 true。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.ExactlyOnce">
      <summary>获取或设置一个值，该值指示是否只接收一次由此绑定处理的消息。</summary>
      <returns>如果此绑定处理的消息只接收一次，则为 true；否则为 false。默认值为 true。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.MaxReceivedMessageSize">
      <summary>获取或设置此绑定可处理的最大消息大小。</summary>
      <returns>此绑定可处理的最大消息大小（以字节为单位）。默认值为 65,536 字节。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.MaxRetryCycles">
      <summary>获取或设置尝试向接收应用程序传递消息的最大重试周期数。</summary>
      <returns>尝试向应用程序传递消息的最大重试周期数。默认值为 2。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.ReceiveContextEnabled">
      <summary>获取或设置是否启用用于控制相互竞争的队列使用者的功能。</summary>
      <returns>如果启用接收上下文，则为 true；否则为 false。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.ReceiveErrorHandling">
      <summary>获取或设置一个枚举值，该值指定如何处理病毒消息。</summary>
      <returns>一个 <see cref="T:System.ServiceModel.ReceiveErrorHandling" /> 值，指定如何处理病毒消息和其他无法调度的消息。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.ReceiveRetryCount">
      <summary>获取或设置从应用程序队列读取的消息的最大立即传递尝试次数。</summary>
      <returns>立即传递尝试的最大次数。默认值为 5。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.RetryCycleDelay">
      <summary>获取或设置一个值，该值指示尝试传递无法立即传递的消息时，各个重试周期之间的时间延迟。</summary>
      <returns>一个 <see cref="T:System.TimeSpan" />，指定在开始下一个尝试传递到接收应用程序的周期前等待的时间间隔。默认值为 10 分钟。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.Scheme">
      <summary>返回此绑定的方案。</summary>
      <returns>此绑定的方案。返回的方案取决于 <see cref="T:System.ServiceModel.MsmqBindingBase" /> 的实现。<see cref="T:System.ServiceModel.NetMsmqBinding" /> 实现返回“net.msmq”。<see cref="T:System.ServiceModel.MsmqIntegration.MsmqIntegrationBinding" /> 实现返回“msmq.formatname”。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.System#ServiceModel#Channels#IBindingRuntimePreferences#ReceiveSynchronously">
      <summary>获取一个值，该值指示传入请求是由同步处理更加有效还是异步处理更加有效。</summary>
      <returns>如果同步处理请求更加有效，则为 true；否则为 false。默认值为 false，即异步处理请求。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.TimeToLive">
      <summary>获取或设置一个时间间隔，该时间间隔指示此绑定处理的消息在过期之前可以保留在队列中的时间长度。</summary>
      <returns>
        <see cref="T:System.TimeSpan" />，指示消息在过期之前可以保留在队列中的时间长度。默认值为 1 天。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.UseMsmqTracing">
      <summary>获取或设置一个值，该值指示是否应跟踪由此绑定处理的消息。</summary>
      <returns>如果应跟踪由此绑定处理的消息，则为 true；否则为 false。默认值为 false。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.UseSourceJournal">
      <summary>获取或设置一个值，该值指示是否应将此绑定处理的消息副本存储到源日记队列中。</summary>
      <returns>如果应将此绑定处理的消息副本存储在源日记队列中，则为 true；否则为 false。默认值为 false。</returns>
    </member>
    <member name="P:System.ServiceModel.MsmqBindingBase.ValidityDuration">
      <summary>获取或设置一个值，该值指示在使用排队通道时的连接超时。</summary>
      <returns>一个 timespan 对象。</returns>
    </member>
    <member name="T:System.ServiceModel.MsmqEncryptionAlgorithm">
      <summary>包含可用于在网络上加密消息的一组加密算法。</summary>
    </member>
    <member name="F:System.ServiceModel.MsmqEncryptionAlgorithm.RC4Stream">
      <summary>由 RSA Security（可能为英文网页）定义的流密码。</summary>
    </member>
    <member name="F:System.ServiceModel.MsmqEncryptionAlgorithm.Aes">
      <summary>高级加密标准 (AES) 由美国国家标准与技术研究院 (NIST) 制定。</summary>
    </member>
    <member name="T:System.ServiceModel.MsmqException">
      <summary>由消息队列 (MSMQ) 返回的包装错误。此异常由消息队列传输和消息队列集成通道引发。</summary>
    </member>
    <member name="M:System.ServiceModel.MsmqException.#ctor">
      <summary>初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例。</summary>
    </member>
    <member name="M:System.ServiceModel.MsmqException.#ctor(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext)">
      <summary>使用有关此异常的其他序列化信息初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例。</summary>
      <param name="info">一个 <see cref="T:System.Runtime.Serialization.SerializationInfo" />，它保存与 <see cref="T:System.ServiceModel.MsmqException" /> 关联的序列化数据。</param>
      <param name="context">一个 <see cref="T:System.Runtime.Serialization.StreamingContext" />，它包含与 <see cref="T:System.ServiceModel.MsmqException" /> 关联的序列化流的源和目标。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqException.#ctor(System.String)">
      <summary>使用提供的消息初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例。</summary>
      <param name="message">用于初始化新实例的消息。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqException.#ctor(System.String,System.Exception)">
      <summary>使用提供的消息和内部异常初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例。</summary>
      <param name="message">用于初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例的消息。</param>
      <param name="inner">要通过 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例来进行包装的内部异常。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqException.#ctor(System.String,System.Int32)">
      <summary>使用提供的消息和错误代码初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例。</summary>
      <param name="message">用于初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例的消息。</param>
      <param name="error">由消息队列 (MSMQ) 基础结构返回的错误代码，用于初始化 <see cref="T:System.ServiceModel.MsmqException" /> 类的新实例。</param>
    </member>
    <member name="T:System.ServiceModel.MsmqPoisonMessageException">
      <summary>包装当通道检测到消息为病毒消息时所引发的异常。</summary>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.#ctor">
      <summary>初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例。</summary>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.#ctor(System.Int64)">
      <summary>使用病毒消息的指定的查找 ID 初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例。</summary>
      <param name="messageLookupId">病毒消息的查找 ID。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.#ctor(System.Int64,System.Exception)">
      <summary>使用病毒消息的指定的查找 ID 和内部异常初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例。</summary>
      <param name="messageLookupId">病毒消息的查找 ID。</param>
      <param name="innerException">要通过 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例来进行包装的内部异常。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.#ctor(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext)">
      <summary>使用有关该异常的其他序列化信息初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例。</summary>
      <param name="info">一个 <see cref="T:System.Runtime.Serialization.SerializationInfo" /> 实例，保存与 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 相关联的序列化数据。</param>
      <param name="context">一个 <see cref="T:System.Runtime.Serialization.StreamingContext" /> 实例，包含与 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 相关联的序列化流的源和目标。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.#ctor(System.String)">
      <summary>使用指定的消息文本初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例。</summary>
      <param name="message">用于初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例的消息。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.#ctor(System.String,System.Exception)">
      <summary>使用指定的消息文本和内部异常初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例。</summary>
      <param name="message">用于初始化 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例的消息。</param>
      <param name="innerException">要通过 <see cref="T:System.ServiceModel.MsmqPoisonMessageException" /> 类的新实例来进行包装的内部异常。</param>
    </member>
    <member name="M:System.ServiceModel.MsmqPoisonMessageException.GetObjectData(System.Runtime.Serializatio