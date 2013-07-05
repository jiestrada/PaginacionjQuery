<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PaginacionJQuery.aspx.vb" Inherits="PaginacionJQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/style.css" rel="stylesheet" />
    <style>            
            a img{
                border:none;
                outline:none;
            }
            .content{
                margin-top:100px;
                padding:0px;
                bottom:0px;
            }            
            .demo{
            width: 580px;
            padding: 10px;
            margin: 10px auto;
            border: 1px solid #fff;
            background-color: #00AEEF;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 30px;
        }
                .demo h1 {
                    color:#CCC;
                }
        .pagedemo{
            border: 1px solid #CCC;
            width: 90%;
            margin: 2px;
            padding: 50px 10px;
            text-align: center;
            background-color: white;
            
            font-size: 50px;
        }
        </style>
    <script src="javascript/jquery-1.3.2.js"></script>
    <script src="javascript/jquery.paginate.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <div id="paginationdemo" class="demo">
                <h1>Demo Paginación</h1>
                <div id="p1" class="pagedemo _current" style="">Page 1</div>
                <div id="p2" class="pagedemo" style="display: none;">Page 2</div>
                <div id="p3" class="pagedemo" style="display: none;">Page 3</div>
                <div id="p4" class="pagedemo" style="display: none;">Page 4</div>
                <div id="p5" class="pagedemo" style="display: none;">Page 5</div>
                <div id="p6" class="pagedemo" style="display: none;">Page 6</div>
                <div id="p7" class="pagedemo" style="display: none;">Page 7</div>
                <div id="p8" class="pagedemo" style="display: none;">Page 8</div>
                <div id="p9" class="pagedemo" style="display: none;">Page 9</div>
                <div id="p10" class="pagedemo" style="display: none;">Page 10</div>
                <div id="demo5">
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(function () {            
            $("#demo5").paginate({
                count: 10,
                start: 1,
                display: 7,
                border: true,
                border_color: '#fff',
                text_color: '#fff',
                background_color: 'black',
                border_hover_color: '#ccc',
                text_hover_color: '#000',
                background_hover_color: '#fff',
                images: false,
                mouse: 'press',
                onChange: function (page) {
                    $('._current', '#paginationdemo').removeClass('_current').hide();
                    $('#p' + page).addClass('_current').show();
                }
            });
        });
		</script>
</body>
</html>
