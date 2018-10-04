<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%@ taglib uri="/struts-tags" prefix="s"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
      <!DOCTYPE HTML>
      <html>
      <head>
        <base href="<%=basePath%>">
        <meta charset="utf-8">
        <title>会员注册</title>
        <link rel="stylesheet" href="css/style.css">
      </head>
<script type="text/javascript">
	function validate(){
		 var pwd1 = document.getElementById("password").value;
              var pwd2 = document.getElementById("password1").value;
		//对比两次输入的密码 
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
                document.getElementById("submit").disabled = true;
	
	}
</script>
      <body>
        <section class="header-top-section">
          <div class="container">
            <div class="row">
              <div class="col-md-6">
                <div class="header-top-content">
                  <ul class="nav nav-pills navbar-left">
                    <li>
                      <a>
                        <span>东莞市爱心志愿者协会&emsp;—</span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>风信子服务队</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6">
                <div class="header-top-menu">
                  <ul class="nav nav-pills navbar-right">
                    <li>
                      <a href="${pageContext.request.contextPath}/register.jsp">
                        <i class="pe-7s-lock"></i>志愿者注册</a>

                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/userLogin.jsp">
                        <i class="pe-7s-lock"></i>志愿者登录</a>

                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/adminAction!login.go">
                        <i class="pe-7s-lock"></i>管理员登录</a>

                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>

        <header class="header-section">
              <nav class="navbar navbar-default">
                <div class="container">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                      aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/jhcf/indexAction!showIndexInfo.go">
                      <b>风</b>信子</a>
                  </div>

                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li class="active">
                        <a href="/jhcf/indexAction!showIndexInfo.go">首页</a>
                      </li>
                      <li class="dropdown">
                        <a href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go" class="dropdown-toggle">公益项目
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                          <li class="kopie">
                          <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=4">公益培训</a>
                            
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=5">公益巡讲</a>
                          </li>
                          <li>
                            <a href="#">公益搭桥</a>
                          </li>
                          
                       
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=2">探访慰问</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=3">儿童之家</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=6">运动公益</a>
                          </li>
                        </ul>
                      </li>
                         <li>
                          	<a href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go">公益活动</a>
                          </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/newsAction!getAllFrontNews.go">新闻动态</a>
                      </li>
                      <li class="dropdown">
                        <a href="${pageContext.request.contextPath }/announcesAction!getAllFrontAnnounces.go" class="dropdown-toggle">秘书办
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=1">动态公告</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=3">财务公告</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=2">月度公告</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">康复礼物</a>
                      </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/tree_getAllFontTree.action">成长树</a>
                      </li>
                      <li>
                            <a href="#">公益义卖</a>
                          </li>
                      <li class="dropdown">
                        <a href="<%=path %>/shipinAll.action" class="dropdown-toggle">视频浏览
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a href="<%=path %>/docAll.action">资料下载</a>
                          </li>
                        </ul>
                      </li>


                     
                      <li>
                        <a href="https://baike.baidu.com/item/%E9%A3%8E%E4%BF%A1%E5%AD%90%E5%85%AC%E7%9B%8A/20474422?fr=aladdin">关于我们</a>
                      </li>
                    </ul>
                  </div>
                  <!-- /.navbar-collapse -->
                </div>
                <!-- /.container -->
              </nav>
            </header>
        <div class="container">
          <div class="row">
            <div class="col-md-4"></div>
              <div class="col-md-4">
              <form action="${pageContext.request.contextPath }/Regist.action" method="post">
                <h3>账号信息</h3><b><font color="red">${result }</font></b>
                <div class="form-group">
                  <label>用户名:</label>
                  <input type="text" name="username" class="form-control" pattern="^[a-zA-Z]{1}([a-zA-Z0-9]){4,19}$" title="用户名格式不正确" placeholder="只能输入5-20个以字母开头、可带数字的字串" required="required" />
                  <s:fielderror fieldName="username"  />
                </div>

                <div class="form-group">
                  <label>密码:</label>
                  <input type="password" name="password" id="password" class="form-control"  pattern="^[0-9A-Za-z]{6,11}$" title="密码格式不正确" placeholder="必须且只含有数字和字母，6-11位" required="required"/>
                  <s:fielderror fieldName="password" />
                </div>
                <div class="form-group">
                  <label>确认密码:</label>
                  <input type="password" name="password1" id="password1" class="form-control" required="required" />
                  <s:fielderror fieldName="password1" /><span id="tishi"></span></input></li>
                </div>
                <h3>个人信息</h3>
                <div class="form-group">
                  <label>真实姓名:</label>
                  <input type="text" name="realname" class="form-control" pattern="[\u4e00-\u9fa5]{2,4}" title="名字格式不正确，只允许输入中文。" placeholder="输入真实姓名" required="required"/>
                  <s:fielderror fieldName="realname" />
                </div>
                <div class="form-group">
                  <label>身份证号:</label>
                  <input type="text" name="idcard" class="form-control" pattern="^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$" title="身份证号码格式不正确" placeholder="中华人民共和国公民身份证号码" required="required"/>
                  <s:fielderror fieldName="idcard" />                  
                </div>
                <div class="form-group">
                  <label>出生日期:</label>
                  <input class="Wdate form-control" name="birthday" type="date" readonly onClick="WdatePicker()"  required="required"/>
                  <font color=red>&lt;- 点我弹出日期</font>
                </div>

                <s:fielderror fieldName="birthday" />
               <b>性别:</b> <s:radio name="gender" list="#{'男':'男','女':'女'}" value="男" required="required"  />
                <s:fielderror fieldName="gender" /><br/><br/>
               <b>婚姻状况:</b> <s:select name="marital"  list="#{'未婚':'未婚','已婚':'已婚','离异':'离异','丧偶':'丧偶' }" listKey="value" listVlue="key" required="required" />
                <s:fielderror fieldName="marital" /><br/><br/>
                <b>教育程度:</b><s:select name="education"  list="#{'小学':'小学','初中':'初中','高中':'高中','中专':'中专','大专':'大专','本科':'本科','硕士':'硕士','博士':'博士','博士后':'博士后' }"
                  listKey="value" listVlue="key" required="required"   />
                <s:fielderror fieldName="education" /><br/><br/>

                <div class="form-group">
                  <label>职业:</label>
                  <input type="text" name="job" class="form-control" pattern="^[A-Za-z0-9\u4e00-\u9fa5]+$" title="职业输入格式不正确，只可输入中文、英文、数字。" placeholder="职业" required="required" />
                  <s:fielderror fieldName="job" />
                </div>
                <h3>通讯信息</h3>
                <div class="form-group">
                  <label>通讯地址:</label>
                  <input type="text" name="address" class="form-control" pattern="^[a-zA-Z\u4e00-\u9fa5]+$" title="通讯地址输入格式不正确，只能输入中文和数字。" placeholder="现在居住地址" required="required" />
                  <s:fielderror fieldName="address" />
                </div>
                <div class="form-group">
                  <label>手机号:</label>
                  <input type="text" name="phone" class="form-control"  pattern="^134[0-8]\d{7}$|^13[^4]\d{8}$|^14[5-9]\d{8}$|^15[^4]\d{8}$|^16[6]\d{8}$|^17[0-8]\d{8}$|^18[\d]{9}$|^19[8,9]\d{8}$" title="手机号码格式不正确" placeholder="输入手机号码" required="required"/>
                  <s:fielderror fieldName="phone" />
                </div>
                <div class="form-group">
                  <label>腾讯QQ:</label>
                  <input type="text" name="qqnumber" class="form-control" pattern="^\d{5,10}$" title="QQ号码格式不正确" placeholder="腾讯QQ" required="required"/>
                  <s:fielderror fieldName="qqnumber" />
                </div>
                <div class="form-group">
                  <label>邮箱:</label>
                  <input type="email" name="email" class="form-control" pattern="[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?" title="输入的邮箱格式不正确!" placeholder="Email格式：例如web@sohu.com" required="required"/>
                  <s:fielderror fieldName="email" />
                </div>
                <input type="hidden" name="status" value="0" />
                <div class="form-group">
                  <label>验证码:</label>
                  <input type="text" name="checkCode" maxlength="4" class="form-control" required="required"/>
                  <img id="image" border="0" onclick="refresh()" src="createImageAction.action" title="看不清，换一张">
                  <s:fielderror fieldName="checkCode" />
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-danger btn-block" onclick="validate()">确认提交</button>
                </div>
              </form>
            </div>
            <div class="col-md-4"></div>
          </div>
        </div>

        <script src="My97DatePicker/WdatePicker.js"></script>
        <script>
          function refresh() {
            //IE存在缓存,需要new Date()实现更换路径的作用    
            document.getElementById("image").src = "createImageAction.action?+ Math.random()"
              + new Date();
          }
          }
        </script>
        <script src="js/vendor/jquery-1.11.2.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/custom.js"></script>
      </body>

      </html>