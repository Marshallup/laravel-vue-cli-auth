(function(t){function e(e){for(var n,s,i=e[0],l=e[1],c=e[2],p=0,m=[];p<i.length;p++)s=i[p],Object.prototype.hasOwnProperty.call(r,s)&&r[s]&&m.push(r[s][0]),r[s]=0;for(n in l)Object.prototype.hasOwnProperty.call(l,n)&&(t[n]=l[n]);u&&u(e);while(m.length)m.shift()();return o.push.apply(o,c||[]),a()}function a(){for(var t,e=0;e<o.length;e++){for(var a=o[e],n=!0,i=1;i<a.length;i++){var l=a[i];0!==r[l]&&(n=!1)}n&&(o.splice(e--,1),t=s(s.s=a[0]))}return t}var n={},r={app:0},o=[];function s(e){if(n[e])return n[e].exports;var a=n[e]={i:e,l:!1,exports:{}};return t[e].call(a.exports,a,a.exports,s),a.l=!0,a.exports}s.m=t,s.c=n,s.d=function(t,e,a){s.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:a})},s.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},s.t=function(t,e){if(1&e&&(t=s(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var a=Object.create(null);if(s.r(a),Object.defineProperty(a,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var n in t)s.d(a,n,function(e){return t[e]}.bind(null,n));return a},s.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return s.d(e,"a",e),e},s.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},s.p="/";var i=window["webpackJsonp"]=window["webpackJsonp"]||[],l=i.push.bind(i);i.push=e,i=i.slice();for(var c=0;c<i.length;c++)e(i[c]);var u=l;o.push([0,"chunk-vendors"]),a()})({0:function(t,e,a){t.exports=a("56d7")},1031:function(t,e,a){"use strict";a("a300")},"56d7":function(t,e,a){"use strict";a.r(e);a("e260"),a("e6cf"),a("cca6"),a("a79d");var n=a("2b0e"),r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("Nav"),a("main",{staticClass:"form-signin"},[a("router-view")],1)],1)},o=[],s=a("1da1"),i=(a("96cf"),a("bc3a")),l=a.n(i),c=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("nav",{staticClass:"navbar navbar-expand-md navbar-dark bg-dark mb-4"},[a("div",{staticClass:"container-fluid"},[a("router-link",{staticClass:"navbar-brand",attrs:{to:{name:"Home"},href:"#"}},[t._v("Home")]),a("div",[a("ul",{staticClass:"navbar-nav me-auto mb-2 mb-md-0"},[a("li",{staticClass:"nav-item"},[a("router-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:{name:"login"}}},[t._v(" Login ")])],1),a("li",{staticClass:"nav-item"},[a("router-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:{name:"register"}}},[t._v(" Register ")])],1)])])],1)])},u=[],p={name:"Nav"},m=p,d=a("2877"),f=Object(d["a"])(m,c,u,!1,null,"bc18479a",null),v=f.exports,g={components:{Nav:v},mounted:function(){return Object(s["a"])(regeneratorRuntime.mark((function t(){var e,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e="http://127.0.0.1:8000/api/user",t.next=3,l.a.get(e,{withCredentials:!0,headers:{Accept:"application/json","Content-Type":"application/json"}});case 3:a=t.sent,console.log(a.data,"check");case 5:case"end":return t.stop()}}),t)})))()}},b=g,h=(a("1031"),Object(d["a"])(b,r,o,!1,null,"4c8d2646",null)),w=h.exports,y=a("8c4f"),C=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"home"},[t._v(" Home ")])},x=[],_={name:"Home",components:{}},j=_,O=Object(d["a"])(j,C,x,!1,null,null,null),P=O.exports,k=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("form",{on:{submit:function(e){return e.preventDefault(),t.submit(e)}}},[a("h1",{staticClass:"h3 mb-3 fw-normal"},[t._v("Please sign in")]),a("div",{staticClass:"form-floating"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.data.email,expression:"data.email"}],staticClass:"form-control",attrs:{type:"email",id:"floatingInput",placeholder:"name@example.com"},domProps:{value:t.data.email},on:{input:function(e){e.target.composing||t.$set(t.data,"email",e.target.value)}}})]),a("div",{staticClass:"form-floating"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.data.password,expression:"data.password"}],staticClass:"form-control",attrs:{type:"password",placeholder:"Password"},domProps:{value:t.data.password},on:{input:function(e){e.target.composing||t.$set(t.data,"password",e.target.value)}}})]),a("button",{staticClass:"w-100 btn btn-lg btn-primary",attrs:{type:"submit"}},[t._v("Sign in")])])},$=[],N={name:"Login",data:function(){return{data:{email:"",password:""}}},methods:{submit:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var a,n,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return a=JSON.stringify(t.data),n="http://127.0.0.1:8000/api/login",e.next=4,l.a.post(n,a,{withCredentials:!0,headers:{Accept:"application/json","Content-Type":"application/json"}});case 4:r=e.sent,console.log(r.data);case 6:case"end":return e.stop()}}),e)})))()}}},S=N,R=Object(d["a"])(S,k,$,!1,null,"e5030924",null),T=R.exports,E=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("form",{on:{submit:function(e){return e.preventDefault(),t.submit(e)}}},[a("h1",{staticClass:"h3 mb-3 fw-normal"},[t._v("Please register")]),a("div",{staticClass:"form-floating"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.data.name,expression:"data.name"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Name"},domProps:{value:t.data.name},on:{input:function(e){e.target.composing||t.$set(t.data,"name",e.target.value)}}})]),a("div",{staticClass:"form-floating"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.data.email,expression:"data.email"}],staticClass:"form-control",attrs:{type:"email",placeholder:"name@example.com"},domProps:{value:t.data.email},on:{input:function(e){e.target.composing||t.$set(t.data,"email",e.target.value)}}})]),a("div",{staticClass:"form-floating"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.data.password,expression:"data.password"}],staticClass:"form-control",attrs:{type:"password",placeholder:"Password"},domProps:{value:t.data.password},on:{input:function(e){e.target.composing||t.$set(t.data,"password",e.target.value)}}})]),a("button",{staticClass:"w-100 btn btn-lg btn-primary",attrs:{type:"submit"}},[t._v("Sign in")])])},H=[],J=(a("d3b7"),{name:"Register",data:function(){return{data:{name:"",email:"",password:""}}},methods:{submit:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,fetch("http://127.0.0.1:8000/api/register",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(t.data)});case 2:return e.next=4,t.$router.push("/login");case 4:case"end":return e.stop()}}),e)})))()}}}),M=J,A=Object(d["a"])(M,E,H,!1,null,"15aae91f",null),D=A.exports;n["a"].use(y["a"]);var L=[{path:"/",name:"Home",component:P},{path:"/login",name:"login",component:T},{path:"/register",name:"register",component:D}],I=new y["a"]({mode:"history",base:"/",routes:L}),q=I,z=a("2f62");n["a"].use(z["a"]);var B=new z["a"].Store({state:{},mutations:{},actions:{},modules:{}});n["a"].config.productionTip=!1,new n["a"]({router:q,store:B,render:function(t){return t(w)}}).$mount("#app")},a300:function(t,e,a){}});
//# sourceMappingURL=app.0a420139.js.map