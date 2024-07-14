package org.example.exercice5;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "dogservlet", value = "/dog/*")
public class DogServlet extends HttpServlet {

    private List<Dog> dogs = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();
        System.out.println(pathInfo);

        if (pathInfo == null || "/".equals(pathInfo)) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
            return;
        }

        switch (pathInfo) {
            case "/list":
                req.setAttribute("dogs", dogs);
                req.getRequestDispatcher("/WEB-INF/list.jsp").forward(req, resp);
                break;
            case "/add":
                req.getRequestDispatcher("/WEB-INF/form.jsp").forward(req, resp);
                break;
            case "/detail":
                req.getRequestDispatcher("/WEB-INF/detail.jsp").forward(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
                break;
        }
    }

    @Override
    public void init() throws ServletException {
        dogs.add(new Dog("Watson", "Européen", LocalDate.now()));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if ("/add".equals(pathInfo)) {
            String name = req.getParameter("name");
            String breed = req.getParameter("breed");
            LocalDate birth = LocalDate.parse(req.getParameter("birth"));
            Dog dog = new Dog(name, breed, birth);
            dogs.add(dog);
            // Redirigez vers la liste des chiens après l'ajout
            resp.sendRedirect(req.getContextPath() + "/dog/list");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }
    }
}

