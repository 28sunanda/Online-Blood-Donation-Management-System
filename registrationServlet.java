/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegistrationServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String name = request.getParameter("name");            
//            out.println(lname);
            String pwd1 = request.getParameter("pwd1");            
//            out.println(pwd2);
            String email = request.getParameter("email");            
//            out.println(email);           
            String number = request.getParameter("number");          
//          out.println(number);
            String address = request.getParameter("address");         
            String gender=request.getParameter("gender");
//            out.println(gender);           
            String nationality=request.getParameter("region");           
            String[]  contact = request.getParameterValues("Contact");
//            out.println(contact);
                String htmlResponse = 
                    "<html>"
                    + "<head>"
                    + "<style>"
                    + "h2{"
                    + "color:purple;"
                    + "margin-top:100px;"
                    + "padding:10px;"
                    + "}body{background-color: lightpink;}"
                    + "</style>"
                    + "</head><body>";
            htmlResponse += "<h2 style = 'text-align : center'>Your first name is : " + name + "<br/>"
                    + "Your password is :"+pwd1+"<br/>"
                    + "Your email is:"+email+"<br/>"
                    + "Your number is :" +number+"<br/>"
                    + "Your address is:"+address+"<br/>"
                    
                    + "Your gender is :"+gender+"<br/>"
                    + "Your nationality is:"+nationality+"<br/>"
                    + "Your preferred method of contact is:";
            for(int i=0;i<contact.length; i++){
                htmlResponse+=contact[i]+"<br/>";
            }        
            out.println(htmlResponse);
        }
        catch(Exception E){          
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
