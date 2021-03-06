<!--Created by MasterHo on 2016.10.25 via IntelliJ IDEA.-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>编辑客户信息</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h3 class="page-header">编辑客户信息</h3>
    <form action="{{U('Admin/Customer/update')}}" method="post">
        {{nocache}}
        <input type="hidden" name="customerID" value="{{$data['c_id']}}">
        <div class="form-group">
            <label>客户姓名</label>
            <input class="form-control" type="text" name="customerName" placeholder="输入客户姓名" value="{{$data['c_name']}}">
        </div>
        <div class="form-group">
            <label>性别</label>
            <select class="form-control" id="clGender" name="customerGender">
                {{if $data['gender'] == 'male'}}
                <option value="male" selected>男</option>
                <option value="female">女</option>
                {{elseif $data['gender'] == 'female'}}
                <option value="male">男</option>
                <option value="female" selected>女</option>
                {{/if}}
            </select>
        </div>
        <div class="form-group">
            <label>联系地址</label>
            <input class="form-control" type="text" name="customerAddr" placeholder="输入联系地址" value="{{$data['c_address']}}">
        </div>
        <div class="form-group">
            <label>联系电话</label>
            <input class="form-control" type="text" name="customerPhone" placeholder="输入联系电话" value="{{$data['phone']}}">
        </div>
        <button type="submit" class="btn btn-primary">更新</button>
        {{/nocache}}
    </form>
</div>
</body>
</html>