var D=Object.defineProperty;var v=Object.getOwnPropertySymbols;var G=Object.prototype.hasOwnProperty,J=Object.prototype.propertyIsEnumerable;var k=(o,t,e)=>t in o?D(o,t,{enumerable:!0,configurable:!0,writable:!0,value:e}):o[t]=e,w=(o,t)=>{for(var e in t||(t={}))G.call(t,e)&&k(o,e,t[e]);if(v)for(var e of v(t))J.call(t,e)&&k(o,e,t[e]);return o};import{B as y,a as $}from"./BaseListItem.638ffd1d.js";import{J as O,k as S,B as x,a0 as U,bb as q,bc as z,a7 as I,r as u,o as n,l as d,w as l,f as c,u as _,h as i,e as j,y as R,aj as V,F as L}from"./vendor.fd3b1727.js";import{u as K}from"./global.e898b72a.js";import"./main.f18430a2.js";import"./auth.09407ae4.js";const M={class:"w-full mb-6 select-wrapper xl:hidden"},Q={class:"pb-3 lg:col-span-3"},T={class:"space-y-1"},W={class:"flex"},X={class:"hidden mt-1 xl:block min-w-[240px]"},Y={class:"w-full overflow-hidden"},nt={setup(o){const{t}=O(),{useRoute:e,useRouter:P}=window.VueRouter,f=e(),C=P(),m=K(),g=S(()=>m.companySlug);let E=x({});x();const p=U([{link:`/${m.companySlug}/customer/settings/customer-profile`,title:t("settings.account_settings.account_settings"),icon:q},{link:`/${m.companySlug}/customer/settings/address-info`,title:t("settings.menu_title.address_information"),icon:z}]);I(()=>{f.path===`/${m.companySlug}/customer/settings`&&C.push({name:"customer.profile"});const a=p.find(B=>B.link===f.path);E.value=w({},a)}),S(()=>p);function h(a){return f.path.indexOf(a)>-1}return(a,B)=>{const b=u("BaseBreadcrumbItem"),F=u("BaseBreadcrumb"),H=u("BasePageHeader"),N=u("RouterView"),A=u("BasePage");return n(),d(A,null,{default:l(()=>[c(H,{title:a.$tc("settings.setting",2),class:"pb-6"},{default:l(()=>[c(F,null,{default:l(()=>[c(b,{title:a.$t("general.home"),to:`/${_(g)}/customer/dashboard`},null,8,["title","to"]),c(b,{title:a.$tc("settings.setting",2),to:`/${_(g)}/customer/settings/customer-profile`,active:""},null,8,["title","to"])]),_:1})]),_:1},8,["title"]),i("div",M,[i("aside",Q,[i("nav",T,[c($,null,{default:l(()=>[(n(!0),j(L,null,R(_(p),(s,r)=>(n(),d(y,{key:r,title:s.title,to:s.link,active:h(s.link),index:r,class:"py-3"},{icon:l(()=>[(n(),d(V(s.icon),{class:"h-5 w-6"}))]),_:2},1032,["title","to","active","index"]))),128))]),_:1})])])]),i("div",W,[i("div",X,[c($,null,{default:l(()=>[(n(!0),j(L,null,R(_(p),(s,r)=>(n(),d(y,{key:r,title:s.title,to:s.link,active:h(s.link),index:r,class:"py-3"},{icon:l(()=>[(n(),d(V(s.icon),{class:"h-5 w-6"}))]),_:2},1032,["title","to","active","index"]))),128))]),_:1})]),i("div",Y,[c(N)])])]),_:1})}}};export{nt as default};
