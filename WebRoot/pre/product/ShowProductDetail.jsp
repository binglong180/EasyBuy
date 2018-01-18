<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="${url}/statics/css/imstyle.css"
	type="text/css"></link>
<link rel="stylesheet" href="${url}/statics/css/ShopShow.css"
	type="text/css"></link>
<link rel="stylesheet" href="${url}/statics/css/MagicZoom.css"
	type="text/css"></link>
</head>

<body>
	<c:if test="${empty url}">
		<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
		<script type="text/javascript">
			var contextPath = "${url}";
		</script>
	</c:if>
	<div class="i_bg">
		<div class="postion">
			<span class="fl">全部 > ${product.categoryLevel1Id} >
				${product.categoryLevel2Id} > ${product.categoryLevel3Id} >
				${product.name}</span>
		</div>
		<div class="content">

			<div id="tsShopContainer">
				<div id="tsImgS">
					<a href="${url}/files/${product.fileName}" title="Images"
						class="MagicZoom" id="MagicZoom"><img
						src="${url}/files/${product.fileName}" width="390" height="390" />
					</a>
				</div>
				<div id="tsPicContainer">
					<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
					<div id="tsImgSCon">
						<ul>
							<li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img
								src="${url}/statics/images/ps1.jpg"
								tsImgS="${url}/statics/images/ps1.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(1)" rel="MagicZoom"><img
								src="${url}/statics/images/ps2.jpg"
								tsImgS="${url}/statics/images/ps2.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(2)" rel="MagicZoom"><img
								src="${url}/statics/images/ps3.jpg"
								tsImgS="${url}/statics/images/ps3.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(3)" rel="MagicZoom"><img
								src="${url}/statics/images/ps4.jpg"
								tsImgS="${url}/statics/images/ps4.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(4)" rel="MagicZoom"><img
								src="${url}/statics/images/ps1.jpg"
								tsImgS="${url}/statics/images/ps1.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(5)" rel="MagicZoom"><img
								src="${url}/statics/images/ps2.jpg"
								tsImgS="${url}/statics/images/ps2.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(6)" rel="MagicZoom"><img
								src="${url}/statics/images/ps3.jpg"
								tsImgS="${url}/statics/images/ps3.jpg" width="79" height="79" />
							</li>
							<li onclick="showPic(7)" rel="MagicZoom"><img
								src="${url}/statics/images/ps4.jpg"
								tsImgS="${url}/statics/images/ps4.jpg" width="79" height="79" />
							</li>
						</ul>
					</div>
					<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
				</div>
				<img class="MagicZoomLoading" width="16" height="16"
					src="${url}/statics/images/loading.gif" alt="Loading..." />
			</div>

			<div class="pro_des">
				<div class="des_name">
					<p>${product.name}</p>
					“开业巨惠，北京专柜直供”，不光低价，“真”才靠谱！
				</div>
				<div class="des_price">
					本店价格：<b>${product.price}</b><br /> 库存：<span>${product.stock}</span>
				</div>

				<div class="des_share">
					<div class="d_sh">
						分享
						<div class="d_sh_bg">
							<a href="#"><img src="${url}/statics/images/sh_1.gif" /> </a> <a
								href="#"><img src="${url}/statics/images/sh_2.gif" /> </a> <a
								href="#"><img src="${url}/statics/images/sh_3.gif" /> </a> <a
								href="#"><img src="${url}/statics/images/sh_4.gif" /> </a> <a
								href="#"><img src="${url}/statics/images/sh_5.gif" /> </a>
						</div>
					</div>
					<div class="d_care">
						<a onclick="ShowDiv('MyDiv','fade')">关注商品</a>
					</div>
				</div>
				<div class="des_join">
					<div class="j_nums">
						<input type="text" value="1" name="" class="n_ipt" id="productQuality"/> <input
							type="button" value="" onclick="addUpdate(jq(this));"
							class="n_btn_1" /> <input type="button" value=""
							onclick="jianUpdate(jq(this));" class="n_btn_2" />
							<input id="productStock" type="hidden" value="${product.stock}"/>
					</div>
					<span class="fl"><a onclick="addCart(${product.id})"><img
							src="${url}/statics/images/j_car.png" /> </a> </span>
				</div>
			</div>




		</div>
		<div class="content mar_20">
			<div class="l_history">
				<div class="fav_t">用户还喜欢</div>
				<ul>
					<li>
						<div class="img">
							<a href="#"><img src="${url}/statics/images/his_1.jpg"
								width="185" height="162" /> </a>
						</div>
						<div class="name">
							<a href="#">Dior/迪奥香水2件套装</a>
						</div>
						<div class="price">
							<font>￥<span>368.00</span> </font> &nbsp; 18R
						</div></li>
					<li>
						<div class="img">
							<a href="#"><img src="${url}/statics/images/his_2.jpg"
								width="185" height="162" /> </a>
						</div>
						<div class="name">
							<a href="#">Dior/迪奥香水2件套装</a>
						</div>
						<div class="price">
							<font>￥<span>768.00</span> </font> &nbsp; 18R
						</div></li>
					<li>
						<div class="img">
							<a href="#"><img src="${url}/statics/images/his_3.jpg"
								width="185" height="162" /> </a>
						</div>
						<div class="name">
							<a href="#">Dior/迪奥香水2件套装</a>
						</div>
						<div class="price">
							<font>￥<span>680.00</span> </font> &nbsp; 18R
						</div></li>
					<li>
						<div class="img">
							<a href="#"><img src="${url}/statics/images/his_4.jpg"
								width="185" height="162" /> </a>
						</div>
						<div class="name">
							<a href="#">Dior/迪奥香水2件套装</a>
						</div>
						<div class="price">
							<font>￥<span>368.00</span> </font> &nbsp; 18R
						</div></li>
					<li>
						<div class="img">
							<a href="#"><img src="${url}/statics/images/his_5.jpg"
								width="185" height="162" /> </a>
						</div>
						<div class="name">
							<a href="#">Dior/迪奥香水2件套装</a>
						</div>
						<div class="price">
							<font>￥<span>368.00</span> </font> &nbsp; 18R
						</div></li>
				</ul>
			</div>
			<div class="l_list">
				<div class="des_border">
					<div class="des_tit">
						<ul>
							<li class="current">推荐搭配</li>
						</ul>
					</div>
					<div class="team_list">
						<div class="img">
							<a href="#"><img src="${url}/statics/images/mat_1.jpg"
								width="160" height="140" /> </a>
						</div>
						<div class="name">
							<a href="#">倩碧补水组合套装8折促销</a>
						</div>
						<div class="price">
							<div class="checkbox">
								<input type="checkbox" name="zuhe" checked="checked" />
							</div>
							<font>￥<span>768.00</span> </font> &nbsp; 18R
						</div>
					</div>
					<div class="team_icon">
						<img src="${url}/statics/images/jia_b.gif" />
					</div>
					<div class="team_list">
						<div class="img">
							<a href="#"><img src="${url}/statics/images/mat_2.jpg"
								width="160" height="140" /> </a>
						</div>
						<div class="name">
							<a href="#">香奈儿邂逅清新淡香水50ml</a>
						</div>
						<div class="price">
							<div class="checkbox">
								<input type="checkbox" name="zuhe" />
							</div>
							<font>￥<span>749.00</span> </font> &nbsp; 18R
						</div>
					</div>
					<div class="team_icon">
						<img src="${url}/statics/images/jia_b.gif" />
					</div>
					<div class="team_list">
						<div class="img">
							<a href="#"><img src="${url}/statics/images/mat_3.jpg"
								width="160" height="140" /> </a>
						</div>
						<div class="name">
							<a href="#">香奈儿邂逅清新淡香水50ml</a>
						</div>
						<div class="price">
							<div class="checkbox">
								<input type="checkbox" name="zuhe" checked="checked" />
							</div>
							<font>￥<span>749.00</span> </font> &nbsp; 18R
						</div>
					</div>
					<div class="team_icon">
						<img src="${url}/statics/images/equl.gif" />
					</div>
					<div class="team_sum">
						套餐价：￥<span>1517</span><br /> <input type="text" value="1"
							class="sum_ipt" /><br /> <a href="#"><img
							src="${url}/statics/images/z_buy.gif" /> </a>
					</div>

				</div>
				<div class="des_border">
					<div class="des_tit">
						<ul>
							<li class="current"><a href="#p_attribute">商品属性</a>
							</li>
							<li><a href="#p_details">商品详情</a>
							</li>
							<li><a href="#p_comment">商品评论</a>
							</li>
						</ul>
					</div>
					<div class="des_con" id="p_attribute">

						<table border="0" align="center"
							style="width:100%; font-family:'宋体'; margin:10px auto;"
							cellspacing="0" cellpadding="0">
							<tr>
								<td>商品名称：迪奥香水</td>
								<td>商品编号：1546211</td>
								<td>品牌： 迪奥（Dior）</td>
								<td>上架时间：2015-09-06 09:19:09</td>
							</tr>
							<tr>
								<td>商品毛重：160.00g</td>
								<td>商品产地：法国</td>
								<td>香调：果香调香型：淡香水/香露EDT</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>容量：1ml-15ml</td>
								<td>类型：女士香水，Q版香水，组合套装</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</table>


					</div>
				</div>

				<div class="des_border" id="p_details">
					<div class="des_t">商品详情</div>
					<div class="des_con">
						<table border="0" align="center"
							style="width:745px; font-size:14px; font-family:'宋体';"
							cellspacing="0" cellpadding="0">
							<tr>
								<td width="265"><img src="${url}/statics/images/de1.jpg"
									width="206" height="412" />
								</td>
								<td><b>迪奥真我香水(Q版)</b><br /> 【商品规格】：5ml<br /> 【商品质地】：液体<br />
									【商品日期】：与专柜同步更新<br /> 【商品产地】：法国<br /> 【商品包装】：无外盒 无塑封<br />
									【商品香调】：花束花香调<br /> 【适用人群】：适合女性（都市白领，性感，有女人味的成熟女性）<br /></td>
							</tr>
						</table>

						<p align="center">
							<img src="${url}/statics/images/de2.jpg" width="746" height="425" /><br />
							<br /> <img src="${url}/statics/images/de3.jpg" width="750"
								height="417" /><br /> <br /> <img
								src="${url}/statics/images/de4.jpg" width="750" height="409" /><br />
							<br /> <img src="${url}/statics/images/de5.jpg" width="750"
								height="409" />
						</p>

					</div>
				</div>

				<div class="des_border" id="p_comment">
					<div class="des_t">商品评论</div>

					<table border="0" class="jud_tab" cellspacing="0" cellpadding="0">
						<tr>
							<td width="175" class="jud_per">
								<p>80.0%</p>好评度</td>
							<td width="300">
								<table border="0" style="width:100%;" cellspacing="0"
									cellpadding="0">
									<tr>
										<td width="90">好评<font color="#999999">（80%）</font>
										</td>
										<td><img src="${url}/statics/images/pl.gif"
											align="absmiddle" />
										</td>
									</tr>
									<tr>
										<td>中评<font color="#999999">（20%）</font>
										</td>
										<td><img src="${url}/statics/images/pl.gif"
											align="absmiddle" />
										</td>
									</tr>
									<tr>
										<td>差评<font color="#999999">（0%）</font>
										</td>
										<td><img src="${url}/statics/images/pl.gif"
											align="absmiddle" />
										</td>
									</tr>
								</table></td>
							<td width="185" class="jud_bg">
								购买过雅诗兰黛第六代特润精华露50ml的顾客，在收到商品才可以对该商品发表评论</td>
							<td class="jud_bg">您可对已购买商品进行评价<br /> <a href="#"><img
									src="${url}/statics/images/btn_jud.gif" /> </a>
							</td>
						</tr>
					</table>



					<table border="0" class="jud_list"
						style="width:100%; margin-top:30px;" cellspacing="0"
						cellpadding="0">
						<tr valign="top">
							<td width="160"><img src="${url}/statics/images/peo1.jpg"
								width="20" height="20" align="absmiddle" />&nbsp;向死而生</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font></td>
							<td>产品很好，香味很喜欢，必须给赞。 <br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
						<tr valign="top">
							<td width="160"><img src="${url}/statics/images/peo2.jpg"
								width="20" height="20" align="absmiddle" />&nbsp;就是这么想的</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font></td>
							<td>送朋友，她很喜欢，大爱。 <br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
						<tr valign="top">
							<td width="160"><img src="${url}/statics/images/peo3.jpg"
								width="20" height="20" align="absmiddle" />&nbsp;墨镜墨镜</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font></td>
							<td>大家都说不错<br /> <font color="#999999">2015-09-24</font></td>
						</tr>
						<tr valign="top">
							<td width="160"><img src="${url}/statics/images/peo4.jpg"
								width="20" height="20" align="absmiddle" />&nbsp;那*****洋 <br />
								<font color="#999999">（匿名用户）</font>
							</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font></td>
							<td>下次还会来买，推荐。<br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
					</table>



					<div class="pages">
						<a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a
							href="#">2</a><a href="#">3</a>...<a href="#">20</a><a href="#"
							class="p_pre">下一页</a>
					</div>

				</div>


			</div>
		</div>


		<!--Begin 弹出层-收藏成功 Begin-->
		<%-- <div id="fade" class="black_overlay"></div>
		<div id="MyDiv" class="white_content">
			<div class="white_d">
				<div class="notice_t">
					<span class="fr" style="margin-top:10px; cursor:pointer;"
						onclick="CloseDiv('MyDiv','fade')"><img
						src="${url}/statics/images/close.gif" /> </span>
				</div>
				<div class="notice_c">

					<table border="0" align="center" style="margin-top:;"
						cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td width="40"><img src="${url}/statics/images/suc.png" />
							</td>
							<td><span
								style="color:#3e3e3e; font-size:18px; font-weight:bold;">您已成功收藏该商品</span><br />
								<a href="#">查看我的关注 >></a></td>
						</tr>
						<tr height="50" valign="bottom">
							<td>&nbsp;</td>
							<td><a href="#" class="b_sure">确定</a>
							</td>
						</tr>
					</table>

				</div>
			</div>
		</div> --%>
		<!--End 弹出层-收藏成功 End-->


		<!--Begin 弹出层-加入购物车 Begin-->
		<%-- <div id="fade3" class="black_overlay"></div>
		<div id="MyDiv3" class="white_content">
			<div class="white_d">
				<div class="notice_t">
					<span class="fr" style="margin-top:10px; cursor:pointer;"
						onclick="CloseDiv_1('MyDiv1','fade1')"><img
						src="${url}/statics/images/close.gif" /> </span>
				</div>
				<div class="notice_c">

					<table border="0" align="center" style="margin-top:;"
						cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td width="40"><img src="${url}/statics/images/suc.png" />
							</td>
							<td><span
								style="color:#3e3e3e; font-size:18px; font-weight:bold;">宝贝已成功添加到购物车</span><br />
								购物车共有1种宝贝（3件） &nbsp; &nbsp; 合计：1120元</td>
						</tr>
						<tr height="50" valign="bottom">
							<td>&nbsp;</td>
							<td><a href="#" class="b_sure">去购物车结算</a><a href="#"
								class="b_buy">继续购物</a>
							</td>
						</tr>
					</table>

				</div>
			</div>
		</div> --%>
		<!--End 弹出层-加入购物车 End-->
		<!--End Footer End -->
	</div>
	<script type="text/javascript" src="${url}/statics/js/lrscroll_1.js"></script>  
	<script type="text/javascript" src="${url}/statics/js/MagicZoom.js"></script>
	<script type="text/javascript" src="${url}/statics/js/num.js">
	
	</script>

	<script type="text/javascript" src="${url}/statics/js/p_tab.js"></script>

	<script type="text/javascript" src="${url}/statics/js/shade.js"></script>
	<script type="text/javascript" src="${url}/statics/js/ShopShow.js"></script>
</body>

</html>
