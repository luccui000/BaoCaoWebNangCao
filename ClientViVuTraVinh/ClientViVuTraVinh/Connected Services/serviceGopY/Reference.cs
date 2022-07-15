﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClientViVuTraVinh.serviceGopY {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="serviceGopY.HelperServiceSoap")]
    public interface HelperServiceSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/gopys", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        ClientViVuTraVinh.serviceGopY.JsonResponseOfListOfGopY gopys();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/gopys", ReplyAction="*")]
        System.Threading.Tasks.Task<ClientViVuTraVinh.serviceGopY.JsonResponseOfListOfGopY> gopysAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GopY", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        ClientViVuTraVinh.serviceGopY.JsonResponseOfString GopY(string HoTen, string Email, string NoiDung, string NgayLap);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GopY", ReplyAction="*")]
        System.Threading.Tasks.Task<ClientViVuTraVinh.serviceGopY.JsonResponseOfString> GopYAsync(string HoTen, string Email, string NoiDung, string NgayLap);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/phanHoi", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        ClientViVuTraVinh.serviceGopY.JsonResponseOfString phanHoi(string Email, string NoiDung);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/phanHoi", ReplyAction="*")]
        System.Threading.Tasks.Task<ClientViVuTraVinh.serviceGopY.JsonResponseOfString> phanHoiAsync(string Email, string NoiDung);
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.8.3761.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class JsonResponseOfListOfGopY : object, System.ComponentModel.INotifyPropertyChanged {
        
        private bool errorField;
        
        private string messageField;
        
        private GopY[] dataField;
        
        private int statusCodeField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=0)]
        public bool Error {
            get {
                return this.errorField;
            }
            set {
                this.errorField = value;
                this.RaisePropertyChanged("Error");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=1)]
        public string Message {
            get {
                return this.messageField;
            }
            set {
                this.messageField = value;
                this.RaisePropertyChanged("Message");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Order=2)]
        public GopY[] Data {
            get {
                return this.dataField;
            }
            set {
                this.dataField = value;
                this.RaisePropertyChanged("Data");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=3)]
        public int StatusCode {
            get {
                return this.statusCodeField;
            }
            set {
                this.statusCodeField = value;
                this.RaisePropertyChanged("StatusCode");
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.8.3761.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class GopY : object, System.ComponentModel.INotifyPropertyChanged {
        
        private int idField;
        
        private string hoTenField;
        
        private string emailField;
        
        private string noiDungField;
        
        private System.Nullable<System.DateTime> ngayLapField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=0)]
        public int Id {
            get {
                return this.idField;
            }
            set {
                this.idField = value;
                this.RaisePropertyChanged("Id");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=1)]
        public string HoTen {
            get {
                return this.hoTenField;
            }
            set {
                this.hoTenField = value;
                this.RaisePropertyChanged("HoTen");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=2)]
        public string Email {
            get {
                return this.emailField;
            }
            set {
                this.emailField = value;
                this.RaisePropertyChanged("Email");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=3)]
        public string NoiDung {
            get {
                return this.noiDungField;
            }
            set {
                this.noiDungField = value;
                this.RaisePropertyChanged("NoiDung");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true, Order=4)]
        public System.Nullable<System.DateTime> NgayLap {
            get {
                return this.ngayLapField;
            }
            set {
                this.ngayLapField = value;
                this.RaisePropertyChanged("NgayLap");
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.8.3761.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class JsonResponseOfString : object, System.ComponentModel.INotifyPropertyChanged {
        
        private bool errorField;
        
        private string messageField;
        
        private string dataField;
        
        private int statusCodeField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=0)]
        public bool Error {
            get {
                return this.errorField;
            }
            set {
                this.errorField = value;
                this.RaisePropertyChanged("Error");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=1)]
        public string Message {
            get {
                return this.messageField;
            }
            set {
                this.messageField = value;
                this.RaisePropertyChanged("Message");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=2)]
        public string Data {
            get {
                return this.dataField;
            }
            set {
                this.dataField = value;
                this.RaisePropertyChanged("Data");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=3)]
        public int StatusCode {
            get {
                return this.statusCodeField;
            }
            set {
                this.statusCodeField = value;
                this.RaisePropertyChanged("StatusCode");
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface HelperServiceSoapChannel : ClientViVuTraVinh.serviceGopY.HelperServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class HelperServiceSoapClient : System.ServiceModel.ClientBase<ClientViVuTraVinh.serviceGopY.HelperServiceSoap>, ClientViVuTraVinh.serviceGopY.HelperServiceSoap {
        
        public HelperServiceSoapClient() {
        }
        
        public HelperServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public HelperServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public HelperServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public HelperServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public ClientViVuTraVinh.serviceGopY.JsonResponseOfListOfGopY gopys() {
            return base.Channel.gopys();
        }
        
        public System.Threading.Tasks.Task<ClientViVuTraVinh.serviceGopY.JsonResponseOfListOfGopY> gopysAsync() {
            return base.Channel.gopysAsync();
        }
        
        public ClientViVuTraVinh.serviceGopY.JsonResponseOfString GopY(string HoTen, string Email, string NoiDung, string NgayLap) {
            return base.Channel.GopY(HoTen, Email, NoiDung, NgayLap);
        }
        
        public System.Threading.Tasks.Task<ClientViVuTraVinh.serviceGopY.JsonResponseOfString> GopYAsync(string HoTen, string Email, string NoiDung, string NgayLap) {
            return base.Channel.GopYAsync(HoTen, Email, NoiDung, NgayLap);
        }
        
        public ClientViVuTraVinh.serviceGopY.JsonResponseOfString phanHoi(string Email, string NoiDung) {
            return base.Channel.phanHoi(Email, NoiDung);
        }
        
        public System.Threading.Tasks.Task<ClientViVuTraVinh.serviceGopY.JsonResponseOfString> phanHoiAsync(string Email, string NoiDung) {
            return base.Channel.phanHoiAsync(Email, NoiDung);
        }
    }
}