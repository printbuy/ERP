import{k as p,r as c,o as r,m as d}from"./main-gVTYX-GK.js";const V={__name:"SwitchType",props:{modelValue:{type:[String,Number,Boolean],default:null}},emits:["update:modelValue"],setup(l,{emit:a}){const n=l,u=a,t=p({get:()=>n.modelValue===1,set:o=>{u("update:modelValue",o?1:0)}});return(o,e)=>{const s=c("BaseSwitch");return r(),d(s,{modelValue:t.value,"onUpdate:modelValue":e[0]||(e[0]=m=>t.value=m)},null,8,["modelValue"])}}};export{V as default};
