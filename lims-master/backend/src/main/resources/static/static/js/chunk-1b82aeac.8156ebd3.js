(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-1b82aeac"],{"00c5":function(t,e,s){"use strict";s("c706")},"4bd5":function(t,e,s){},b953:function(t,e,s){"use strict";s.r(e);var r=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"register-container"},[s("el-form",{staticClass:"register-form",attrs:{"label-position":"left"}},[s("div",{staticClass:"title-container"},[s("h3",{staticClass:"title"},[t._v("账号注册")])]),s("el-form-item",[s("span",{staticClass:"svg-container"},[s("svg-icon",{attrs:{"icon-class":"user"}})],1),s("el-input",{attrs:{type:"text",tabindex:"1",placeholder:"姓名"},model:{value:t.registerForm.name,callback:function(e){t.$set(t.registerForm,"name",e)},expression:"registerForm.name"}})],1),s("el-form-item",[s("span",{staticClass:"svg-container"},[s("svg-icon",{attrs:{"icon-class":"lock"}})],1),s("el-input",{attrs:{type:t.passwordType,tabindex:"2",placeholder:"密码"},model:{value:t.registerForm.password,callback:function(e){t.$set(t.registerForm,"password",e)},expression:"registerForm.password"}}),s("span",{staticClass:"show-pwd",on:{click:t.showPassword}},[s("svg-icon",{attrs:{"icon-class":"password"===t.passwordType?"eye":"eye-open"}})],1)],1),s("el-form-item",[s("span",{staticClass:"svg-container"},[s("svg-icon",{attrs:{"icon-class":"email"}})],1),s("el-input",{attrs:{type:"text",tabindex:"3",placeholder:"邮箱"},model:{value:t.registerForm.email,callback:function(e){t.$set(t.registerForm,"email",e)},expression:"registerForm.email"}})],1),s("el-row",{attrs:{gutter:20}},[s("el-col",{attrs:{span:16}},[s("el-form-item",[s("span",{staticClass:"svg-container"},[s("svg-icon",{attrs:{"icon-class":"key"}})],1),s("el-input",{attrs:{type:"text",tabindex:"4",placeholder:"验证码"},model:{value:t.registerForm.verifyCode,callback:function(e){t.$set(t.registerForm,"verifyCode",e)},expression:"registerForm.verifyCode"}})],1)],1),s("el-col",{staticStyle:{margin:"6px 0"},attrs:{span:8}},[s("el-button",{class:{disabled:!this.canClick},staticStyle:{width:"100%"},on:{click:t.sendVerifyCode}},[t._v(t._s(t.content))])],1)],1),s("el-row",{attrs:{gutter:20}},[s("el-col",{attrs:{span:16}},[s("el-button",{staticStyle:{width:"100%"},attrs:{type:"primary"},on:{click:t.submitForm}},[t._v("注册")])],1),s("el-col",{attrs:{span:8}},[s("router-link",{attrs:{to:"/login"}},[s("el-button",{staticStyle:{width:"100%"},attrs:{type:"info"}},[t._v("前往登录")])],1)],1)],1)],1)],1)},a=[],i=s("c24f"),o=s("b775");function n(t){return Object(o["a"])({url:"/email/verifyCode",method:"GET",params:{email:t}})}var c={registerAccount:i["f"],sendVerifyCode:n},l={name:"register",data:function(){return{registerForm:{name:"",password:"",email:"",verifyCode:""},passwordType:"password",content:"发送验证码",totalTime:30,canClick:!0}},methods:{showPassword:function(){"password"===this.passwordType?this.passwordType="":this.passwordType="password"},sendVerifyCode:function(){var t=this;if(this.canClick){this.canClick=!1,this.content=this.totalTime+"s后重新发送";var e=window.setInterval((function(){t.totalTime--,t.content=t.totalTime+"s后重新发送",t.totalTime<0&&(window.clearInterval(e),t.content="发送验证码",t.totalTime=30,t.canClick=!0)}),1e3);c.sendVerifyCode(this.registerForm.email)}},submitForm:function(){var t=this;c.registerAccount(this.registerForm).then((function(){t.$message({message:"注册成功",type:"success"}),t.$router.push({path:"/login"})})).catch((function(){}))}}},p=l,m=(s("00c5"),s("cb4c"),s("2877")),d=Object(m["a"])(p,r,a,!1,null,"02aeae25",null);e["default"]=d.exports},c706:function(t,e,s){},cb4c:function(t,e,s){"use strict";s("4bd5")}}]);