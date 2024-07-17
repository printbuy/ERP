import{E as R,F as T,G as A,e as ee,v as E,f as V,H as J,k as q,g as w,h as x,a0 as ae,j as H,r,o as I,m as F,w as l,b as i,t as g,l as o,q as K,a as t,p as k,J as O,K as G,a5 as te,c as L,n as oe,N as ne,I as se}from"./main-gVTYX-GK.js";const le={class:"flex justify-between w-full"},de={class:"px-6 pt-6"},re={class:"font-medium text-lg text-left"},ie={class:"mt-2 text-sm leading-snug text-gray-500",style:{"max-width":"680px"}},ue={class:"p-4 sm:p-6 space-y-4"},me={class:"z-0 flex justify-end p-4 bg-gray-50 border-modal-bg"},pe={__name:"DeleteCompanyModal",setup(P){const p=R(),v=T(),h=A(),$=ee(),{t:S}=E.useI18n();let u=V(!1);const e=J({id:p.selectedCompany.id,name:null}),b=q(()=>v.active&&v.componentName==="DeleteCompanyModal"),f={formData:{name:{required:w.withMessage(S("validation.required"),x),sameAsName:w.withMessage(S("validation.company_name_not_same"),ae(p.selectedCompany.name))}}},c=H(f,{formData:e},{$scope:!1});async function B(){if(c.value.$touch(),c.value.$invalid)return!0;const y=p.companies[0];u.value=!0;try{const _=await p.deleteCompany(e);console.log(_.data.success),_.data.success&&(m(),await p.setSelectedCompany(y),$.push("/admin/dashboard"),await h.setIsAppLoaded(!1),await h.bootstrap()),u.value=!1}catch{u.value=!1}}function M(){e.id=null,e.name="",c.value.$reset()}function m(){v.closeModal(),setTimeout(()=>{M(),c.value.$reset()},300)}return(y,_)=>{const N=r("BaseInput"),U=r("BaseInputGroup"),s=r("BaseButton"),a=r("BaseIcon"),D=r("BaseModal");return I(),F(D,{show:b.value,onClose:m},{default:l(()=>[i("div",le,[i("div",de,[i("h6",re,g(o(v).title),1),i("p",ie,g(y.$t("settings.company_info.delete_company_modal_desc",{company:o(p).selectedCompany.name})),1)])]),i("form",{action:"",onSubmit:K(B,["prevent"])},[i("div",ue,[t(U,{label:y.$t("settings.company_info.delete_company_modal_label",{company:o(p).selectedCompany.name}),error:o(c).formData.name.$error&&o(c).formData.name.$errors[0].$message,required:""},{default:l(()=>[t(N,{modelValue:e.name,"onUpdate:modelValue":_[0]||(_[0]=d=>e.name=d),invalid:o(c).formData.name.$error,onInput:_[1]||(_[1]=d=>o(c).formData.name.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["label","error"])]),i("div",me,[t(s,{class:"mr-3 text-sm",variant:"primary-outline",outline:"",type:"button",onClick:m},{default:l(()=>[k(g(y.$t("general.cancel")),1)]),_:1}),t(s,{loading:o(u),disabled:o(u),variant:"danger",type:"submit"},{left:l(d=>[o(u)?G("",!0):(I(),F(a,{key:0,name:"TrashIcon",class:O(d.class)},null,8,["class"]))]),default:l(()=>[k(" "+g(y.$t("general.delete")),1)]),_:1},8,["loading","disabled"])])],32)]),_:1},8,["show"])}}},ce={key:0,class:"py-5"},_e={class:"text-lg leading-6 font-medium text-gray-900"},fe={class:"mt-2 max-w-xl text-sm text-gray-500"},ye={class:"mt-5"},ve={__name:"CompanyInfoSettings",setup(P){const p=R(),v=A(),h=T(),{t:$}=E.useI18n(),S=te("utils");let u=V(!1);const e=J({name:null,logo:null,address:{address_street_1:"",address_street_2:"",website:"",country_id:null,state:"",city:"",phone:"",zip:""}});S.mergeSettings(e,{...p.selectedCompany});let b=V([]),f=V(null),c=V(null);const B=V(!1);e.logo&&b.value.push({image:e.logo});const M=q(()=>({name:{required:w.withMessage($("validation.required"),x),minLength:w.withMessage($("validation.name_min_length"),se(3))},address:{country_id:{required:w.withMessage($("validation.required"),x)}}})),m=H(M,q(()=>e));v.fetchCountries();function y(s,a,D,d){c.value=d.name,f.value=a}function _(){f.value=null,B.value=!0}async function N(){if(m.value.$touch(),m.value.$invalid)return!0;if(u.value=!0,(await p.updateCompany(e)).data.data){if(f.value||B.value){let a=new FormData;f.value&&a.append("company_logo",JSON.stringify({name:c.value,data:f.value})),a.append("is_company_logo_removed",B.value),await p.updateCompanyLogo(a),f.value=null,B.value=!1}u.value=!1}u.value=!1}function U(s){h.openModal({title:$("settings.company_info.are_you_absolutely_sure"),componentName:"DeleteCompanyModal",size:"sm"})}return(s,a)=>{const D=r("BaseFileUploader"),d=r("BaseInputGroup"),z=r("BaseInputGrid"),C=r("BaseInput"),Q=r("BaseMultiselect"),j=r("BaseTextarea"),W=r("BaseIcon"),X=r("BaseButton"),Y=r("BaseDivider"),Z=r("BaseSettingCard");return I(),L(ne,null,[i("form",{onSubmit:K(N,["prevent"])},[t(Z,{title:s.$t("settings.company_info.company_info"),description:s.$t("settings.company_info.section_description")},{default:l(()=>[t(z,{class:"mt-5"},{default:l(()=>[t(d,{label:s.$t("settings.company_info.company_logo")},{default:l(()=>[t(D,{modelValue:o(b),"onUpdate:modelValue":a[0]||(a[0]=n=>oe(b)?b.value=n:b=n),base64:"",onChange:y,onRemove:_},null,8,["modelValue"])]),_:1},8,["label"])]),_:1}),t(z,{class:"mt-5"},{default:l(()=>[t(d,{label:s.$t("settings.company_info.company_name"),error:o(m).name.$error&&o(m).name.$errors[0].$message,required:""},{default:l(()=>[t(C,{modelValue:e.name,"onUpdate:modelValue":a[1]||(a[1]=n=>e.name=n),invalid:o(m).name.$error,onBlur:a[2]||(a[2]=n=>o(m).name.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["label","error"]),t(d,{label:s.$t("settings.company_info.phone")},{default:l(()=>[t(C,{modelValue:e.address.phone,"onUpdate:modelValue":a[3]||(a[3]=n=>e.address.phone=n)},null,8,["modelValue"])]),_:1},8,["label"]),t(d,{label:s.$t("settings.company_info.country"),error:o(m).address.country_id.$error&&o(m).address.country_id.$errors[0].$message,required:""},{default:l(()=>[t(Q,{modelValue:e.address.country_id,"onUpdate:modelValue":a[4]||(a[4]=n=>e.address.country_id=n),label:"name",invalid:o(m).address.country_id.$error,options:o(v).countries,"value-prop":"id","can-deselect":!0,"can-clear":!1,searchable:"","track-by":"name"},null,8,["modelValue","invalid","options"])]),_:1},8,["label","error"]),t(d,{label:s.$t("settings.company_info.state")},{default:l(()=>[t(C,{modelValue:e.address.state,"onUpdate:modelValue":a[5]||(a[5]=n=>e.address.state=n),name:"state",type:"text"},null,8,["modelValue"])]),_:1},8,["label"]),t(d,{label:s.$t("settings.company_info.city")},{default:l(()=>[t(C,{modelValue:e.address.city,"onUpdate:modelValue":a[6]||(a[6]=n=>e.address.city=n),type:"text"},null,8,["modelValue"])]),_:1},8,["label"]),t(d,{label:s.$t("settings.company_info.zip")},{default:l(()=>[t(C,{modelValue:e.address.zip,"onUpdate:modelValue":a[7]||(a[7]=n=>e.address.zip=n)},null,8,["modelValue"])]),_:1},8,["label"]),i("div",null,[t(d,{label:s.$t("settings.company_info.address")},{default:l(()=>[t(j,{modelValue:e.address.address_street_1,"onUpdate:modelValue":a[8]||(a[8]=n=>e.address.address_street_1=n),rows:"2"},null,8,["modelValue"])]),_:1},8,["label"]),t(j,{modelValue:e.address.address_street_2,"onUpdate:modelValue":a[9]||(a[9]=n=>e.address.address_street_2=n),rows:"2",row:2,class:"mt-2"},null,8,["modelValue"])])]),_:1}),t(X,{loading:o(u),disabled:o(u),type:"submit",class:"mt-6"},{left:l(n=>[o(u)?G("",!0):(I(),F(W,{key:0,class:O(n.class),name:"SaveIcon"},null,8,["class"]))]),default:l(()=>[k(" "+g(s.$t("settings.company_info.save")),1)]),_:1},8,["loading","disabled"]),o(p).companies.length!==1?(I(),L("div",ce,[t(Y,{class:"my-4"}),i("h3",_e,g(s.$t("settings.company_info.delete_company")),1),i("div",fe,[i("p",null,g(s.$t("settings.company_info.delete_company_description")),1)]),i("div",ye,[i("button",{type:"button",class:"inline-flex items-center justify-center px-4 py-2 border border-transparent font-medium rounded-md text-red-700 bg-red-100 hover:bg-red-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 sm:text-sm",onClick:U},g(s.$t("general.delete")),1)])])):G("",!0)]),_:1},8,["title","description"])],32),t(pe)],64)}}};export{ve as default};
