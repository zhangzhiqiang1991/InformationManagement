<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm(){
		var channelName=document.getElementById("channelName").value;
		if(channelName==null||channelName==""){
			document.getElementById("error").innerHTML="资讯频道名称不能为空！";
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<div class="data_list backMain">
	<div class="dataHeader navi">
		${navCode}
	</div>
	<div class="data_content">
		<form action="channel?action=save" method="post" onsubmit="return checkForm()">
			<table cellpadding="5">
				<tr>
					<td>
						<label>资讯频道名称：</label>
					</td>
					<td>
						<input type="text" id="channelName" name="channelName" value="${channel.channelName }"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="hidden" id="channelId" name="channelId" value="${channel.channelId }"/>
					</td>
					<td>
						<input type="submit" class="btn btn-primary" value="保存资讯频道"/>&nbsp;&nbsp;
						<input type="button" class="btn btn-primary" value="返回" onclick="javascript:history.back()"/>&nbsp;&nbsp;<font id="error" color="red">${error }</font>
					</td>
				</tr>
				
			</table>
		</form>
	</div>
</div>
</body>
</html>