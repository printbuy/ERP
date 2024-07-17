import{v as q,f as _,H as A,a5 as O,L as Q,k as $,a9 as Y,r as l,o as f,m as b,w as t,a as n,ac as k,ad as I,l as r,J as H,p as v,t as u,K as Z,b as B,bk as ee,bj as te}from"./main-gVTYX-GK.js";import ae from"./BaseTable-_k1F2iAt.js";import{_ as ne}from"./CapsuleIcon-rb05Njce.js";import{u as le}from"./payment-lNU_Ei0X.js";import{u as oe}from"./global-QdrF0cxI.js";import"./auth-_zxfH7yG.js";const se={class:"relative table-container"},me=["innerHTML"],fe={__name:"Index",setup(re){const{tm:ue,t:c}=q.useI18n();let i=_(!1);_("created_at");let h=_(!0),P=_(null);const o=A({payment_mode:"",payment_number:""}),M=O("utils");Q();const p=le(),y=oe(),C=$(()=>!p.totalPayments&&!h.value),N=$(()=>y.currency),E=$(()=>[{key:"payment_date",label:c("payments.date"),thClass:"extra",tdClass:"font-medium text-gray-900"},{key:"payment_number",label:c("payments.payment_number")},{key:"payment_mode",label:c("payments.payment_mode")},{key:"invoice_number",label:c("invoices.invoice_number")},{key:"amount",label:c("payments.amount")},{key:"actions",label:"",tdClass:"text-right text-sm font-medium",sortable:!1}]);Y(o,()=>{L()},{debounce:500});async function T(a){return(await p.fetchPaymentModes(a,y.companySlug)).data.data}async function j({page:a,filter:m,sort:d}){let g={payment_method_id:o.payment_mode!==null?o.payment_mode:"",payment_number:o.payment_number,orderByField:d.fieldName||"created_at",orderBy:d.order||"desc",page:a};h.value=!0;let s=await p.fetchPayments(g,y.companySlug);return h.value=!1,{data:s.data.data,pagination:{totalPages:s.data.meta.last_page,currentPage:a,totalCount:s.data.meta.total,limit:10}}}function G(){P.value.refresh()}function L(){G()}function w(){o.customer="",o.payment_mode="",o.payment_number=""}function z(){i.value&&w(),i.value=!i.value}return(a,m)=>{const d=l("BaseBreadcrumbItem"),g=l("BaseBreadcrumb"),s=l("BaseIcon"),U=l("BaseButton"),W=l("BasePageHeader"),x=l("BaseInput"),S=l("BaseInputGroup"),J=l("BaseMultiselect"),K=l("BaseFilterWrapper"),R=l("BaseEmptyPlaceholder"),V=l("router-link"),X=l("BasePage");return f(),b(X,null,{default:t(()=>[n(W,{title:a.$t("payments.title")},{actions:t(()=>[k(n(U,{variant:"primary-outline",onClick:z},{right:t(e=>[r(i)?(f(),b(s,{key:1,class:H(e.class),name:"XIcon"},null,8,["class"])):(f(),b(s,{key:0,class:H(e.class),name:"FilterIcon"},null,8,["class"]))]),default:t(()=>[v(u(a.$t("general.filter"))+" ",1)]),_:1},512),[[I,r(p).totalPayments]])]),default:t(()=>[n(g,{slot:"breadcrumbs"},{default:t(()=>[n(d,{title:a.$t("general.home"),to:`/${r(y).companySlug}/customer/dashboard`},null,8,["title","to"]),n(d,{title:a.$t("payments.payment",2),to:"#",active:""},null,8,["title"])]),_:1})]),_:1},8,["title"]),k(n(K,{onClear:w},{default:t(()=>[n(S,{label:a.$t("payments.payment_number"),class:"px-3"},{default:t(()=>[n(x,{modelValue:o.payment_number,"onUpdate:modelValue":m[0]||(m[0]=e=>o.payment_number=e),placeholder:a.$t("payments.payment_number")},null,8,["modelValue","placeholder"])]),_:1},8,["label"]),n(S,{label:a.$t("payments.payment_mode"),class:"px-3"},{default:t(()=>[n(J,{modelValue:o.payment_mode,"onUpdate:modelValue":m[1]||(m[1]=e=>o.payment_mode=e),"value-prop":"id","track-by":"name","filter-results":!1,label:"name","resolve-on-load":"",delay:100,searchable:"",options:T,placeholder:a.$t("payments.payment_mode")},null,8,["modelValue","placeholder"])]),_:1},8,["label"])]),_:1},512),[[I,r(i)]]),C.value?(f(),b(R,{key:0,title:a.$t("payments.no_payments"),description:a.$t("payments.list_of_payments")},{default:t(()=>[n(ne,{class:"mt-5 mb-4"})]),_:1},8,["title","description"])):Z("",!0),k(B("div",se,[n(ae,{ref_key:"table",ref:P,data:j,columns:E.value,"placeholder-count":r(p).totalPayments>=20?10:5,class:"mt-10"},{"cell-payment_date":t(({row:e})=>[v(u(e.data.formatted_payment_date),1)]),"cell-payment_number":t(({row:e})=>[n(V,{to:{path:`payments/${e.data.id}/view`},class:"font-medium text-primary-500"},{default:t(()=>[v(u(e.data.payment_number),1)]),_:2},1032,["to"])]),"cell-payment_mode":t(({row:e})=>[B("span",null,u(e.data.payment_method?e.data.payment_method.name:a.$t("payments.not_selected")),1)]),"cell-invoice_number":t(({row:e})=>{var F,D;return[B("span",null,u((F=e.data.invoice)!=null&&F.invoice_number?(D=e.data.invoice)==null?void 0:D.invoice_number:a.$t("payments.no_invoice")),1)]}),"cell-amount":t(({row:e})=>[B("div",{innerHTML:r(M).formatMoney(e.data.amount,N.value)},null,8,me)]),"cell-actions":t(({row:e})=>[n(ee,null,{activator:t(()=>[n(s,{name:"DotsHorizontalIcon",class:"w-5 text-gray-500"})]),default:t(()=>[n(V,{to:`payments/${e.data.id}/view`},{default:t(()=>[n(te,null,{default:t(()=>[n(s,{name:"EyeIcon",class:"h-5 mr-3 text-gray-600"}),v(" "+u(a.$t("general.view")),1)]),_:1})]),_:2},1032,["to"])]),_:2},1024)]),_:1},8,["columns","placeholder-count"])],512),[[I,!C.value]])]),_:1})}}};export{fe as default};
