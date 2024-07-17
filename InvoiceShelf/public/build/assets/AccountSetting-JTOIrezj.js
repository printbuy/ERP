import{M as N,G as D,E as R,v as h,f as $,k as B,H as j,j as E,r as u,o as V,c as L,a as o,w as l,l as s,n as z,m as H,J,K,p as P,t as T,q as O,b as Q,g as f,h as b,i as W,I as X,a0 as Y}from"./main-gVTYX-GK.js";const Z=Q("span",null,null,-1),ae={__name:"AccountSetting",setup(x){const i=N(),I=D(),U=R(),{t:g}=h.useI18n();let d=$(!1),m=$(null),c=$([]);const w=$(!1);i.currentUser.avatar&&c.value.push({image:i.currentUser.avatar});const S=B(()=>({name:{required:f.withMessage(g("validation.required"),b)},email:{required:f.withMessage(g("validation.required"),b),email:f.withMessage(g("validation.email_incorrect"),W)},password:{minLength:f.withMessage(g("validation.password_length",{count:8}),X(8))},confirm_password:{sameAsPassword:f.withMessage(g("validation.password_incorrect"),Y(a.password))}})),a=j({name:i.currentUser.name,email:i.currentUser.email,language:i.currentUserSettings.language||U.selectedCompanySettings.language,password:"",confirm_password:""}),n=E(S,B(()=>a));function y(r,e){m.value=e}function C(){m.value=null,w.value=!0}async function M(){if(n.value.$touch(),n.value.$invalid)return!0;d.value=!0;let r={name:a.name,email:a.email};try{if(a.password!=null&&a.password!==void 0&&a.password!==""&&(r={...r,password:a.password}),i.currentUserSettings.language!==a.language&&await i.updateUserSettings({settings:{language:a.language}}),(await i.updateCurrentUser(r)).data.data){if(d.value=!1,m.value||w.value){let v=new FormData;m.value&&v.append("admin_avatar",m.value),v.append("is_admin_avatar_removed",w.value),await i.uploadAvatar(v),m.value=null,w.value=!1}a.password="",a.confirm_password=""}}catch{return d.value=!1,!0}}return(r,e)=>{const v=u("BaseFileUploader"),p=u("BaseInputGroup"),_=u("BaseInput"),q=u("BaseMultiselect"),F=u("BaseInputGrid"),k=u("BaseIcon"),A=u("BaseButton"),G=u("BaseSettingCard");return V(),L("form",{class:"relative",onSubmit:O(M,["prevent"])},[o(G,{title:r.$t("settings.account_settings.account_settings"),description:r.$t("settings.account_settings.section_description")},{default:l(()=>[o(F,null,{default:l(()=>[o(p,{label:r.$t("settings.account_settings.profile_picture")},{default:l(()=>[o(v,{modelValue:s(c),"onUpdate:modelValue":e[0]||(e[0]=t=>z(c)?c.value=t:c=t),avatar:!0,accept:"image/*",onChange:y,onRemove:C},null,8,["modelValue"])]),_:1},8,["label"]),Z,o(p,{label:r.$t("settings.account_settings.name"),error:s(n).name.$error&&s(n).name.$errors[0].$message,required:""},{default:l(()=>[o(_,{modelValue:a.name,"onUpdate:modelValue":e[1]||(e[1]=t=>a.name=t),invalid:s(n).name.$error,onInput:e[2]||(e[2]=t=>s(n).name.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["label","error"]),o(p,{label:r.$t("settings.account_settings.email"),error:s(n).email.$error&&s(n).email.$errors[0].$message,required:""},{default:l(()=>[o(_,{modelValue:a.email,"onUpdate:modelValue":e[3]||(e[3]=t=>a.email=t),invalid:s(n).email.$error,onInput:e[4]||(e[4]=t=>s(n).email.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["label","error"]),o(p,{error:s(n).password.$error&&s(n).password.$errors[0].$message,label:r.$t("settings.account_settings.password")},{default:l(()=>[o(_,{modelValue:a.password,"onUpdate:modelValue":e[5]||(e[5]=t=>a.password=t),type:"password",onInput:e[6]||(e[6]=t=>s(n).password.$touch())},null,8,["modelValue"])]),_:1},8,["error","label"]),o(p,{label:r.$t("settings.account_settings.confirm_password"),error:s(n).confirm_password.$error&&s(n).confirm_password.$errors[0].$message},{default:l(()=>[o(_,{modelValue:a.confirm_password,"onUpdate:modelValue":e[7]||(e[7]=t=>a.confirm_password=t),type:"password",onInput:e[8]||(e[8]=t=>s(n).confirm_password.$touch())},null,8,["modelValue"])]),_:1},8,["label","error"]),o(p,{label:r.$t("settings.language")},{default:l(()=>[o(q,{modelValue:a.language,"onUpdate:modelValue":e[9]||(e[9]=t=>a.language=t),options:s(I).config.languages,label:"name","value-prop":"code","track-by":"name","open-direction":"top"},null,8,["modelValue","options"])]),_:1},8,["label"])]),_:1}),o(A,{loading:s(d),disabled:s(d),class:"mt-6"},{left:l(t=>[s(d)?K("",!0):(V(),H(k,{key:0,name:"SaveIcon",class:J(t.class)},null,8,["class"]))]),default:l(()=>[P(" "+T(r.$t("settings.company_info.save")),1)]),_:1},8,["loading","disabled"])]),_:1},8,["title","description"])],32)}}};export{ae as default};
