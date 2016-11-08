
<html>
<head>

</head>
<body>

<form method="get" action="">
  choose an image 
  <label>
  <input type="file" name="f1" />
  </label>
  
  <p>
    <label>
    <input type="submit"   />
    </label>
  </p>
</form>
</body>
</html>

<%@ page import = "java.sql.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.util.*" %>

<%
out.println(request.getParameter("f1"));
  if( (request.getParameter("f1")) != null)
  {
try{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost\\MSSQLSERVER:1434;databaseName=example","sa","waheguru");
File file=new File(request.getParameter("f1"));
BufferedImage img=ImageIO.read(file);
ByteArrayOutputStream bas=new ByteArrayOutputStream();
ImageIO.write(img, "png", bas);
byte[] data =bas.toByteArray();
  //FileInputStream fis=new FileInputStream(file);
  
 //out.println("1" + fis);
 int len = (int)file.length();
 //out.println(len);
 PreparedStatement  psmt=con.prepareStatement("update image set img=?");
  psmt.setBinaryStream(1, data, len); 
                       int chk1= psmt.executeUpdate();
 

 out.println(chk1);
  if(chk1>0) {
 out.println("Image Uploaded successfully !"); 
 }
	else {
	out.println("unsucessfull to upload image.");
  }
  con.close();
 }

catch(Exception ex)
{
ex.printStackTrace();
}


}

%>

