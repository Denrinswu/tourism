<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>景点</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${ctxPath}/css/a.css">
</head>
<body>
<jsp:include  page="zhuye.jsp"/> <!--引入导航栏  -->
	<div id="box">
		<header>
			<p>${data.name}</p>
			<%-- <p>${data.local}</p> --%>
		</header>
		<div class="mid-left">
			<img src="${data.picture}" alt="">
		</div>
		<div class="mid-right">
			<p>关于${data.name}</p>
			<p id="a" style="height:100px;width:400px;overflow-y:hidden;">${data.describ}</p>
			<a href="javascript:void(0)" id="show" style="display:block" onclick="document.getElementById('a').style.height='250px';document.getElementById('hidden').style.display='block';document.getElementById('show').style.display='none';">[详细信息]</a>
			<a href="javascript:void(0)" id="hidden" style="display:none;" onclick="document.getElementById('a').style.height='100px';document.getElementById('hidden').style.display='none';document.getElementById('show').style.display='block';">[收起]</a>
		</div>
		<br />
		<br />
		<div class="bot">特价门票</div>
		<div class="bot1">
				<p>赵州桥成人票</p>
				<p>请在当日15点前到互联网窗口取票</p>
				<p>&yen${data.tacketMoney/1}</p>
				<p>预订</p>
		</div>
		<div class="bot1">
				<p>赵州桥儿童票</p>
				<p>请在当日15点前到互联网窗口取票</p>
				<p>&yen${data.tacketMoney/2}</p>
				<p>预订</p>
		</div>
		<div class="bot1">
				<p>赵州桥学生票</p>
				<p>请在当日15点前到互联网窗口取票</p>
				<!-- <p class="from-inline" data-box="buy">
					<button type="button">-</button>
					<input style="width: 100px" type="text" id="BuyNum_1" min="1" max="10" step="1" patten="[0-9]*" value="1" name="BuyNum" />
					<button type="button">+</button>
				</p> -->
				<p>&yen${data.tacketMoney/2}</p>
				<p onclick="order(this)">预订</p>
		</div>
		<!-- <div class="fot">点评</div>
		<div class="fot1">
			<p>小明：</p>
			<p>我是先去的柏霖禅寺，然后想坐2路公交直接再去赵州桥，好不容易在车站等到车，可是车连理我都不理直接就开走了，害得我地踮的走到赵州桥。赵州桥怎么说呢，总之就是【大老远跑到赵县去公园里看座桥】。赵州桥门票要40元，感觉太贵了，10元的话还差不多（个人感觉真心有点蛋疼）。看了半天赵州桥的地，最后也没看出个子丑寅卯！里面还有非拉着你让你照张相，把照片印在水杯上的商人，烦死了，不过我还是做了一个！要25元，砍砍价，15元搞定！赵州桥公园里还有个貌似是叫【铁索桥】的桥（具体名字我忘了），走在桥上，桥来回晃荡，过桥还真得有些胆量才行！</p>
		</div>
		<div class="fot1">
			<p>小李：</p>
			<p>臭脚来评：出了赵州桥，门口很少有出租车经过，拦不到车了，于是找了一个面包车的师傅，谈好价钱，一个人3元，把我们拉到从赵县到石家庄南焦客运站的中巴始发站，本来说把我们拉到上午下车的地方就可以了，师傅说了，在那边上车就没有位置坐了，最后我们还是同意去始发站坐车返程。（详见另一个详细版）
			</p>
		</div> -->
		<br />
		<br />
		<br />
		<div class="footer">游记</div>
		<div class="footer1">
			<c:choose>
				<c:when test="${fn:length(data2)<2}">
					<div class="fo-left"><img src="${ctxPath}/images/thumbnails.jpg" alt=""></div>
					<div class="fo-right">
						<p>${data2[0].title}</p>
						<p>${data2[0].time}</p>
						<p>${data2[0].desribe}</p>
					</div>
				</c:when>
				<c:otherwise>
						<c:forEach items="${data2 }" var="h">
							<div class="fo-left"><img src="${ctxPath}/images/thumbnails.jpg" alt=""></div>
							<div class="fo-right">
								<p>${h.title}</p>
								<p>${h.time}</p>
								<p>${h.desribe}</p>
							</div>
						</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		<%-- <div class="footer1">
			<div class="fo-left"><img src="${ctxPath}/images/thumbnails1.jpg" alt=""></div>
			<div class="fo-right">
				<p>lily&soon在路上之 2011暑假游：天津-太原-平...</p>
				<p>行程：东营 - 天津 太原 平遥 石家庄 日期：2011年08月天数：8天预算：4262元</p>
				<p>...赵州桥。石家庄到赵县距离40多公里，同样走国道就OK。门票35元一个人。逛完才知道，里面什么都是重新返修的，或者说基本没有多少古迹了，不过好歹圆了小时...
				</p>
			</div>
		</div>
		<div class="footer1">
			<div class="fo-left"><img src="${ctxPath}/images/thumbnails2.jpg" alt=""></div>
			<div class="fo-right">
				<p>【我们出发吧】早春时节，带你探访石家庄名胜...</p>
				<p>行程：郑州 - 大佛寺 赵云庙 赵州桥 柏林禅寺 西柏坡纪念馆 抱犊寨 日期：2012年03月天数：5天预算：1000-3000(元)</p>
				<p>...赵州桥、大佛寺、荣国府、西柏坡……每个名字都让人激动和向往。【Day2】探访千年古城正定县【千年古城正定县】正定是一座历史文化名城，古称常山，三国赵...</p>
			</div>
		</div> --%>
	</div>
	
</body>
<script type="text/javascript">
    function getElementByAttr(tag, attr, value) {
         var aElements = document.getElementsByTagName(tag);
         var aEle = [];
         for (var i = 0; i < aElements.length; i++) {
             if (aElements[i].getAttribute(attr) == value)
                 aEle.push(aElements[i]);
         }
         return aEle;
     }
     window.onload = function () {
         var box = getElementByAttr("p", "data-box", "buy");
         for (var i = 0; i < box.length; i++) {
             calculate(box[i]);

         }
     }
	function calculate(box) {
        var oBtn = box.getElementsByTagName("button");
        var ipt = box.getElementsByTagName("input")[0];
        var number = parseInt(ipt.value);
        alert(ipt.parentNode.parentNode.id);
		var p3 = document.getElementById("p3");
		var money = ${data.tacketMoney};
        oBtn[0].onclick = function () {
        	number--;
            if (number < 0) {
                number = 0;
            }
            ipt.value = number;
			p3.innerHTML = number * money / 2;
        }
        oBtn[1].onclick = function () {
            number++;
            ipt.value = number;
            p3.innerHTML = number * money / 2;
        }
     }
 </script>
</html>