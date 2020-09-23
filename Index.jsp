<html lang="en" dir="ltr">
  <%! int i;int score=0;String Answer;String[] ques={"What's the alter ego of Batman?","Which avenger did Batman beat first in DC Marvel Crossover?","Who broke Batman's back?"};String[][] options={{"Arthur McCurry","Bruce Wayne","Matt Murdock"},{"Hulk","Iron Man","Thor"},{"Joker","Bane","Riddler"}};String[] Ans={"Bruce Wayne","Hulk","Bane"};%>
  <head>
    <meta charset="utf-8">
    <title>Batman Quiz</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <%i=request.getParameter("Qno")!=null?Integer.parseInt((String)request.getParameter("Qno")):0;
  score=i==0?0:score;
  Answer = request.getParameter("option")!=null?(String)request.getParameter("option"):"";
  if(Answer.equals(Ans[i==0?i:i-1]))
  {
   score++;
  }

    if(i<ques.length)
    {i++;}
    else
    {
      response.sendRedirect("http://localhost:8080/Result.jsp?Score="+score);}
    %>
  <body class="container" style="background-color:black;background-image:linear-gradient(to right,black,linear-gradient(to right,purple,cyan,indigo))">
    <h1 style="font-size:80px;text-align:center;color:#555;">Batman Quiz</h1>
    <img src="bat2.jpg" width="100%" height="100%" alt="">
    <div class="progress" style="width:125%;margin-left: -140px;height:1%">
    <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:<%=((i-1)*100)/ques.length%>%;background-image:linear-gradient(to right,yellow,black);">
    </div>
  </div>
  <form class="container" action="Index.jsp" method="get">
  <h3 style="color:#555;"><%=ques[i-1]%></h3>
  <input type="hidden" name="Qno" value="<%=i%>">
  <button type="submit" class="btn btn-primary btnopn" name="option" value="<%=options[i-1][0]%>">A) <%=options[i-1][0]%></button>
  <button type="submit" class="btn btn-primary btnopn" name="option" style="margin-left:31.5%;" value="<%=options[i-1][1]%>">B) <%=options[i-1][1]%></button>
  <button type="submit" class="btn btn-primary btnopn" name="option" style="margin-left:63%;" value="<%=options[i-1][2]%>">C) <%=options[i-1][2]%></button>
  </form>
  </body>
</html>
