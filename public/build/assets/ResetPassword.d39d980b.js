import{G as S,aN as M,J as E,a0 as j,B as $,k as x,L as m,M as g,Q as C,N as G,P as L,T as N,r as u,o as f,e as P,f as n,w as p,u as e,l as _,x as y,i as U,t as A,U as R}from"./vendor.fd3b1727.js";import{u as D}from"./global.e898b72a.js";import{u as O}from"./auth.09407ae4.js";import"./main.f18430a2.js";const T=["onSubmit"],K={setup(F){const c=S(),b=M(),B=O(),{t:i}=E(),r=j({email:"",password:"",password_confirmation:""});D();let s=$(!1),v=$(!1);const I=x(()=>({email:{required:m.withMessage(i("validation.required"),g),email:m.withMessage(i("validation.email_incorrect"),C)},password:{required:m.withMessage(i("validation.required"),g),minLength:m.withMessage(i("validation.password_min_length",{count:8}),G(8))},password_confirmation:{sameAsPassword:m.withMessage(i("validation.password_incorrect"),L(r.password))}})),a=N(I,r);async function V(l){if(a.value.$touch(),!a.value.$invalid){let o={email:r.email,password:r.password,password_confirmation:r.password_confirmation,token:c.params.token};v.value=!0;let d=B.resetPassword(o,c.params.company);v.value=!1,d.data&&b.push({name:"customer.login"})}}return(l,o)=>{const d=u("BaseInput"),w=u("BaseInputGroup"),k=u("EyeOffIcon"),h=u("EyeIcon"),q=u("BaseButton");return f(),P("form",{id:"loginForm",onSubmit:R(V,["prevent"])},[n(w,{error:e(a).email.$error&&e(a).email.$errors[0].$message,label:l.$t("login.email"),class:"mb-4",required:""},{default:p(()=>[n(d,{modelValue:e(r).email,"onUpdate:modelValue":o[0]||(o[0]=t=>e(r).email=t),type:"email",name:"email",invalid:e(a).email.$error,onInput:o[1]||(o[1]=t=>e(a).email.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["error","label"]),n(w,{error:e(a).password.$error&&e(a).password.$errors[0].$message,label:l.$t("login.password"),class:"mb-4",required:""},{default:p(()=>[n(d,{modelValue:e(r).password,"onUpdate:modelValue":o[4]||(o[4]=t=>e(r).password=t),type:e(s)?"text":"password",name:"password",invalid:e(a).password.$error,onInput:o[5]||(o[5]=t=>e(a).password.$touch())},{right:p(()=>[e(s)?(f(),_(k,{key:0,class:"w-5 h-5 mr-1 text-gray-500 cursor-pointer",onClick:o[2]||(o[2]=t=>y(s)?s.value=!e(s):s=!e(s))})):(f(),_(h,{key:1,class:"w-5 h-5 mr-1 text-gray-500 cursor-pointer",onClick:o[3]||(o[3]=t=>y(s)?s.value=!e(s):s=!e(s))}))]),_:1},8,["modelValue","type","invalid"])]),_:1},8,["error","label"]),n(w,{error:e(a).password_confirmation.$error&&e(a).password_confirmation.$errors[0].$message,label:l.$t("login.retype_password"),class:"mb-4",required:""},{default:p(()=>[n(d,{modelValue:e(r).password_confirmation,"onUpdate:modelValue":o[6]||(o[6]=t=>e(r).password_confirmation=t),type:"password",name:"password",invalid:e(a).password_confirmation.$error,onInput:o[7]||(o[7]=t=>e(a).password_confirmation.$touch())},null,8,["modelValue","invalid"])]),_:1},8,["error","label"]),n(q,{type:"submit",variant:"primary"},{default:p(()=>[U(A(l.$t("login.reset_password")),1)]),_:1})],40,T)}}};export{K as default};
