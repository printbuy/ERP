import{at as S,F as V,v as C,f as k,k as g,g as h,h as q,I as x,j as N,r as i,o as b,m as B,w as r,b as d,p,t as v,l as e,a as l,q as j,J as z,K as D}from"./main-gVTYX-GK.js";const E={class:"flex justify-between w-full"},G={class:"p-8 sm:p-6"},L={class:"z-0 flex justify-end p-4 border-t border-gray-200 border-solid border-modal-bg"},J={__name:"ItemUnitModal",setup(T){const t=S(),a=V(),{t:I}=C.useI18n();let o=k(!1);const $=g(()=>({name:{required:h.withMessage(I("validation.required"),q),minLength:h.withMessage(I("validation.name_min_length",{count:2}),x(2))}})),n=N($,g(()=>t.currentItemUnit));async function U(){if(n.value.$touch(),n.value.$invalid)return!0;try{const s=t.isItemUnitEdit?t.updateItemUnit:t.addItemUnit;o.value=!0,await s(t.currentItemUnit),a.refreshData&&a.refreshData(),u(),o.value=!1}catch{return o.value=!1,!0}}function u(){a.closeModal(),setTimeout(()=>{t.currentItemUnit={id:null,name:""},a.$reset(),n.value.$reset()},300)}return(s,m)=>{const f=i("BaseIcon"),y=i("BaseInput"),w=i("BaseInputGroup"),_=i("BaseButton"),M=i("BaseModal");return b(),B(M,{show:e(a).active&&e(a).componentName==="ItemUnitModal",onClose:u},{header:r(()=>[d("div",E,[p(v(e(a).title)+" ",1),l(f,{name:"XIcon",class:"w-6 h-6 text-gray-500 cursor-pointer",onClick:u})])]),default:r(()=>[d("form",{action:"",onSubmit:j(U,["prevent"])},[d("div",G,[l(w,{label:s.$t("settings.customization.items.unit_name"),error:e(n).name.$error&&e(n).name.$errors[0].$message,variant:"horizontal",required:""},{default:r(()=>[l(y,{modelValue:e(t).currentItemUnit.name,"onUpdate:modelValue":m[0]||(m[0]=c=>e(t).currentItemUnit.name=c),invalid:e(n).name.$error,type:"text",onInput:m[1]||(m[1]=c=>e(n).name.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["label","error"])]),d("div",L,[l(_,{type:"button",variant:"primary-outline",class:"mr-3 text-sm",onClick:u},{default:r(()=>[p(v(s.$t("general.cancel")),1)]),_:1}),l(_,{loading:e(o),disabled:e(o),variant:"primary",type:"submit"},{left:r(c=>[e(o)?D("",!0):(b(),B(f,{key:0,name:"SaveIcon",class:z(c.class)},null,8,["class"]))]),default:r(()=>[p(" "+v(e(t).isItemUnitEdit?s.$t("general.update"):s.$t("general.save")),1)]),_:1},8,["loading","disabled"])])],32)]),_:1},8,["show"])}}};export{J as _};
