<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>관리자</title>
    <script src="/js/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
    <link rel="stylesheet" href="/css/admin_common.css">
</head>
<body>
    <div id="wrap">
        <div class="admin-header">
            <div class="admin-header__upper">
                <div class="logo">축제행사장 관리자</div>
                <a href="/"><button class="logout-button">메인으로 돌아가기</button></a>
            </div>
            <ul class="admin-header__downer">
                <li>
                    <a href="/admin/venue">행사장 관리</a>
                </li>
                <li>
                    <a href="/admin/transportation">교통편 관리</a>
                </li>
                <li>
                    <a href="/admin/venue/manager">행사장 임대 관리</a>
                </li>
                <li>
                    <a href="/admin/transportation/manager">교통편 임대 관리</a>
                </li>
            </ul>
        </div>