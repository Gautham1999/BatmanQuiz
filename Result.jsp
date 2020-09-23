
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quiz Result</title>
  </head>
  <style media="screen">
    .btnopn{
      padding-left:50px;
      padding-right:50px;
      position:absolute;
      background-color:yellow;
      color:black;
    }
  </style>
  <body class="container" style="background-color:black;">
    <h1 style="font-size:80px;text-align:center;color:#555;">Batman Quiz</h1>
    <img src="bat2.jpg" width="100%" height="100%" alt="">
    <div class="progress" style="width:125%;margin-left: -140px;height:1%">
    <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:100%;background-image:linear-gradient(to right,yellow,black);">
    </div></div>
    <h2 style="text-align:center;color:#555;">Score is <%=(String)request.getParameter("Score")%>/3</h2>
    <form action="Index.jsp" method="get">
      <button type="submit" class="btn btn-primary btnopn" style="margin-left:35.5%;" name="button">Reset</button>
    </form>
  </body>
</html>
