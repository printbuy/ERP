import{a4 as _,s as r,a1 as m,u as n}from"./main-gVTYX-GK.js";const d=(l=!1)=>{const c=l?window.pinia.defineStore:_,{global:o}=window.i18n;return c({id:"mail-driver",state:()=>({mailConfigData:null,mail_driver:"smtp",mail_drivers:[],basicMailConfig:{mail_driver:"",mail_host:"",from_mail:"",from_name:""},mailgunConfig:{mail_driver:"",mail_mailgun_domain:"",mail_mailgun_secret:"",mail_mailgun_endpoint:"",from_mail:"",from_name:""},sesConfig:{mail_driver:"",mail_host:"",mail_port:null,mail_ses_key:"",mail_ses_secret:"",mail_encryption:"tls",from_mail:"",from_name:""},smtpConfig:{mail_driver:"",mail_host:"",mail_port:null,mail_username:"",mail_password:"",mail_encryption:"tls",from_mail:"",from_name:""}}),actions:{fetchMailDrivers(){return new Promise((t,e)=>{r.get("/api/v1/mail/drivers").then(i=>{i.data&&(this.mail_drivers=i.data),t(i)}).catch(i=>{m(i),e(i)})})},fetchMailConfig(){return new Promise((t,e)=>{r.get("/api/v1/mail/config").then(i=>{i.data&&(this.mailConfigData=i.data,this.mail_driver=i.data.mail_driver),t(i)}).catch(i=>{m(i),e(i)})})},updateMailConfig(t){return new Promise((e,i)=>{r.post("/api/v1/mail/config",t).then(a=>{const s=n();a.data.success?s.showNotification({type:"success",message:o.t("wizard.success."+a.data.success)}):s.showNotification({type:"error",message:o.t("wizard.errors."+a.data.error)}),e(a)}).catch(a=>{m(a),i(a)})})},sendTestMail(t){return new Promise((e,i)=>{r.post("/api/v1/mail/test",t).then(a=>{const s=n();a.data.success?s.showNotification({type:"success",message:o.t("general.send_mail_successfully")}):s.showNotification({type:"error",message:o.t("validation.something_went_wrong")}),e(a)}).catch(a=>{m(a),i(a)})})}}})()};export{d as u};
