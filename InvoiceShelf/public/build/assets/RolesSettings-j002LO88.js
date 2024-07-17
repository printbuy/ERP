import{a4 as Y,aE as Z,s as D,a1 as E,u as j,a7 as ee,v as q,L as te,M as X,F,a5 as se,r as h,o as _,m as C,w as u,l as d,a as f,p as k,t as v,K as O,f as U,k as V,g as P,h as J,I as ae,j as oe,b as g,q as ne,c as L,N as z,O as K,J as Q,E as ie,a6 as le}from"./main-gVTYX-GK.js";const T=(I=!1)=>{const p=I?window.pinia.defineStore:Y,{global:e}=window.i18n;return p({id:"role",state:()=>({roles:[],allAbilities:[],selectedRoles:[],currentRole:{id:null,name:"",abilities:[]}}),getters:{isEdit:a=>!!a.currentRole.id,abilitiesList:a=>{let o=a.allAbilities.map(n=>({modelName:n.model?n.model.substring(n.model.lastIndexOf("\\")+1):"Common",disabled:!1,...n}));return Z.groupBy(o,"modelName")}},actions:{fetchRoles(a){return new Promise((o,n)=>{D.get("/api/v1/roles",{params:a}).then(t=>{this.roles=t.data.data,o(t)}).catch(t=>{E(t),n(t)})})},fetchRole(a){return new Promise((o,n)=>{D.get(`/api/v1/roles/${a}`).then(t=>{this.currentRole.name=t.data.data.name,this.currentRole.id=t.data.data.id,t.data.data.abilities.forEach(i=>{for(const c in this.abilitiesList)this.abilitiesList[c].forEach(y=>{y.ability===i.name&&this.currentRole.abilities.push(y)})}),o(t)}).catch(t=>{E(t),n(t)})})},addRole(a){const o=j();return new Promise((n,t)=>{D.post("/api/v1/roles",a).then(i=>{this.roles.push(i.data.role),o.showNotification({type:"success",message:e.t("settings.roles.created_message")}),n(i)}).catch(i=>{E(i),t(i)})})},updateRole(a){const o=j();return new Promise((n,t)=>{D.put(`/api/v1/roles/${a.id}`,a).then(i=>{if(i.data){let c=this.roles.findIndex(y=>y.id===i.data.data.id);this.roles[c]=a.role,o.showNotification({type:"success",message:e.t("settings.roles.updated_message")})}n(i)}).catch(i=>{E(i),t(i)})})},fetchAbilities(a){return new Promise((o,n)=>{this.allAbilities.length?o(this.allAbilities):D.get("/api/v1/abilities",{params:a}).then(t=>{this.allAbilities=t.data.abilities,o(t)}).catch(t=>{E(t),n(t)})})},deleteRole(a){const o=j();return new Promise((n,t)=>{D.delete(`/api/v1/roles/${a}`).then(i=>{let c=this.roles.findIndex(y=>y.id===a);this.roles.splice(c,1),o.showNotification({type:"success",message:e.t("settings.roles.deleted_message")}),n(i)}).catch(i=>{E(i),t(i)})})}}})()},re={__name:"RoleIndexDropdown",props:{row:{type:Object,default:null},table:{type:Object,default:null},loadData:{type:Function,default:null}},setup(I){const p=I,e=ee();j();const{t:a}=q.useI18n(),o=T(),n=te(),t=X(),i=F();se("utils");async function c(B){Promise.all([await o.fetchAbilities(),await o.fetchRole(B)]).then(()=>{i.openModal({title:a("settings.roles.edit_role"),componentName:"RolesModal",size:"lg",refreshData:p.loadData})})}async function y(B){e.openDialog({title:a("general.are_you_sure"),message:a("settings.roles.confirm_delete"),yesLabel:a("general.ok"),noLabel:a("general.cancel"),variant:"danger",hideNoButton:!1,size:"lg"}).then(async b=>{b&&await o.deleteRole(B).then(R=>{R.data&&p.loadData&&p.loadData()})})}return(B,b)=>{const R=h("BaseIcon"),w=h("BaseButton"),s=h("BaseDropdownItem"),r=h("BaseDropdown");return _(),C(r,null,{activator:u(()=>[d(n).name==="roles.view"?(_(),C(w,{key:0,variant:"primary"},{default:u(()=>[f(R,{name:"DotsHorizontalIcon",class:"h-5 text-white"})]),_:1})):(_(),C(R,{key:1,name:"DotsHorizontalIcon",class:"h-5 text-gray-500"}))]),default:u(()=>[d(t).currentUser.is_owner?(_(),C(s,{key:0,onClick:b[0]||(b[0]=m=>c(I.row.id))},{default:u(()=>[f(R,{name:"PencilIcon",class:"w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"}),k(" "+v(B.$t("general.edit")),1)]),_:1})):O("",!0),d(t).currentUser.is_owner?(_(),C(s,{key:1,onClick:b[1]||(b[1]=m=>y(I.row.id))},{default:u(()=>[f(R,{name:"TrashIcon",class:"w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"}),k(" "+v(B.$t("general.delete")),1)]),_:1})):O("",!0)]),_:1})}}},de={class:"flex justify-between w-full"},ce={class:"px-4 md:px-8 py-4 md:py-6"},ue={class:"flex justify-between"},me={class:"text-sm not-italic font-medium text-gray-800 px-4 md:px-8 py-1.5"},fe=g("span",{class:"text-sm text-red-500"}," *",-1),pe={class:"text-sm not-italic font-medium text-gray-300 px-4 md:px-8 py-1.5"},be={class:"border-t border-gray-200 py-3"},he={class:"grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 px-8 sm:px-8"},ge={class:"text-sm text-gray-500 border-b border-gray-200 pb-1 mb-2"},_e={key:0,class:"block mt-0.5 text-sm text-red-500"},ye={class:"z-0 flex justify-end p-4 border-t border-solid border--200 border-modal-bg"},ve={__name:"RolesModal",setup(I){const p=F(),e=T(),{t:a}=q.useI18n();let o=U(!1),n=U(!1);const t=V(()=>p.active&&p.componentName==="RolesModal"),i=V(()=>({name:{required:P.withMessage(a("validation.required"),J),minLength:P.withMessage(a("validation.name_min_length",{count:3}),ae(3))},abilities:{required:P.withMessage(a("validation.at_least_one_ability"),J)}})),c=oe(i,V(()=>e.currentRole));async function y(){if(c.value.$touch(),c.value.$invalid)return!0;try{const s=e.isEdit?e.updateRole:e.addRole;o.value=!0,await s(e.currentRole),o.value=!1,p.refreshData&&p.refreshData(),w()}catch{return o.value=!1,!0}}function B(s){var m,l;if(!e.currentRole.abilities.find(S=>S.ability===s.ability)&&((m=s==null?void 0:s.depends_on)!=null&&m.length)){R(s);return}(l=s==null?void 0:s.depends_on)==null||l.forEach(S=>{Object.keys(e.abilitiesList).forEach(M=>{e.abilitiesList[M].forEach($=>{S===$.ability&&($.disabled=!0,e.currentRole.abilities.find(x=>x.ability===S)||e.currentRole.abilities.push($))})})})}function b(s){let r=[];Object.keys(e.abilitiesList).forEach(m=>{e.abilitiesList[m].forEach(l=>{l!=null&&l.depends_on&&(r=[...r,...l.depends_on])})}),Object.keys(e.abilitiesList).forEach(m=>{e.abilitiesList[m].forEach(l=>{r.includes(l.ability)&&(s?l.disabled=!0:l.disabled=!1),e.currentRole.abilities.push(l)})}),s||(e.currentRole.abilities=[])}function R(s){s.depends_on.forEach(r=>{Object.keys(e.abilitiesList).forEach(m=>{e.abilitiesList[m].forEach(l=>{let S=e.currentRole.abilities.find(M=>{var $;return($=M.depends_on)==null?void 0:$.includes(l.ability)});r===l.ability&&!S&&(l.disabled=!1)})})})}function w(){p.closeModal(),setTimeout(()=>{e.currentRole={id:null,name:"",abilities:[]},Object.keys(e.abilitiesList).forEach(s=>{e.abilitiesList[s].forEach(r=>{r.disabled=!1})}),c.value.$reset()},300)}return(s,r)=>{const m=h("BaseIcon"),l=h("BaseInput"),S=h("BaseInputGroup"),M=h("BaseCheckbox"),$=h("BaseButton"),G=h("BaseModal");return _(),C(G,{show:t.value,onClose:w},{header:u(()=>[g("div",de,[k(v(d(p).title)+" ",1),f(m,{name:"XIcon",class:"w-6 h-6 text-gray-500 cursor-pointer",onClick:w})])]),default:u(()=>[g("form",{onSubmit:ne(y,["prevent"])},[g("div",ce,[f(S,{label:s.$t("settings.roles.name"),class:"mt-3",error:d(c).name.$error&&d(c).name.$errors[0].$message,required:"","content-loading":d(n)},{default:u(()=>[f(l,{modelValue:d(e).currentRole.name,"onUpdate:modelValue":r[0]||(r[0]=x=>d(e).currentRole.name=x),invalid:d(c).name.$error,type:"text","content-loading":d(n),onInput:r[1]||(r[1]=x=>d(c).name.$touch())},null,8,["modelValue","invalid","content-loading"])]),_:1},8,["label","error","content-loading"])]),g("div",ue,[g("h6",me,[k(v(s.$t("settings.roles.permission",2))+" ",1),fe]),g("div",pe,[g("a",{class:"cursor-pointer text-primary-400",onClick:r[2]||(r[2]=x=>b(!0))},v(s.$t("settings.roles.select_all")),1),k(" / "),g("a",{class:"cursor-pointer text-primary-400",onClick:r[3]||(r[3]=x=>b(!1))},v(s.$t("settings.roles.none")),1)])]),g("div",be,[g("div",he,[(_(!0),L(z,null,K(d(e).abilitiesList,(x,H)=>(_(),L("div",{key:H,class:"flex flex-col space-y-1"},[g("p",ge,v(H),1),(_(!0),L(z,null,K(x,(N,W)=>(_(),L("div",{key:W,class:"flex"},[f(M,{modelValue:d(e).currentRole.abilities,"onUpdate:modelValue":[r[4]||(r[4]=A=>d(e).currentRole.abilities=A),A=>B(N)],"set-initial-value":!0,variant:"primary",disabled:N.disabled,label:N.name,value:N},null,8,["modelValue","disabled","label","value","onUpdate:modelValue"])]))),128))]))),128)),d(c).abilities.$error?(_(),L("span",_e,v(d(c).abilities.$errors[0].$message),1)):O("",!0)])]),g("div",ye,[f($,{class:"mr-3 text-sm",variant:"primary-outline",type:"button",onClick:w},{default:u(()=>[k(v(s.$t("general.cancel")),1)]),_:1}),f($,{loading:d(o),disabled:d(o),variant:"primary",type:"submit"},{left:u(x=>[f(m,{name:"SaveIcon",class:Q(x.class)},null,8,["class"])]),default:u(()=>[k(" "+v(d(e).isEdit?s.$t("general.update"):s.$t("general.save")),1)]),_:1},8,["loading","disabled"])])],32)]),_:1},8,["show"])}}},Be={__name:"RolesSettings",setup(I){const p=F(),e=T(),a=X(),o=ie(),{t:n}=q.useI18n(),t=U(null),i=V(()=>[{key:"name",label:n("settings.roles.role_name"),thClass:"extra",tdClass:"font-medium text-gray-900"},{key:"created_at",label:n("settings.roles.added_on"),tdClass:"font-medium text-gray-900"},{key:"actions",label:"",tdClass:"text-right text-sm font-medium",sortable:!1}]);async function c({page:b,filter:R,sort:w}){let s={orderByField:w.fieldName||"created_at",orderBy:w.order||"desc",company_id:o.selectedCompany.id};return{data:(await e.fetchRoles(s)).data.data}}async function y(){t.value&&t.value.refresh()}async function B(){await e.fetchAbilities(),p.openModal({title:n("settings.roles.add_role"),componentName:"RolesModal",size:"lg",refreshData:t.value&&t.value.refresh})}return(b,R)=>{const w=h("BaseIcon"),s=h("BaseButton"),r=h("BaseTable"),m=h("BaseSettingCard");return _(),L(z,null,[f(ve),f(m,{title:b.$t("settings.roles.title"),description:b.$t("settings.roles.description")},le({default:u(()=>[f(r,{ref_key:"table",ref:t,data:c,columns:i.value,class:"mt-14"},{"cell-created_at":u(({row:l})=>[k(v(l.data.formatted_created_at),1)]),"cell-actions":u(({row:l})=>[d(a).currentUser.is_owner&&l.data.name!=="super admin"?(_(),C(re,{key:0,row:l.data,table:t.value,"load-data":y},null,8,["row","table"])):O("",!0)]),_:1},8,["columns"])]),_:2},[d(a).currentUser.is_owner?{name:"action",fn:u(()=>[f(s,{variant:"primary-outline",onClick:B},{left:u(l=>[f(w,{name:"PlusIcon",class:Q(l.class)},null,8,["class"])]),default:u(()=>[k(" "+v(b.$t("settings.roles.add_new_role")),1)]),_:1})]),key:"0"}:void 0]),1032,["title","description"])],64)}}};export{Be as default};
