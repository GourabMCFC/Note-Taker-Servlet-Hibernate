# 📝 Note Taking Application

Effortlessly manage your notes with this **Note Taking Application**, a powerful web-based solution built with **Java Servlet**, **JSP**, **Hibernate**, and **MySQL**. This application is designed to help users organize their thoughts and tasks by creating, updating, and managing notes in a streamlined interface.

## 🚀 Key Features

- **Create, Update, and Delete Notes**  
  Easily create new notes, update existing ones, or remove them when no longer needed. The intuitive user interface ensures that managing your notes is simple and hassle-free.

- **AJAX with XMLHttpRequest for Seamless User Interaction**  
  We've implemented **AJAX** requests using **XMLHttpRequest** to provide a smooth and responsive user experience. This allows actions like saving and updating notes to happen asynchronously in the background without requiring full-page reloads, resulting in a faster and more fluid user experience.

- **Efficient Database Management with Connection Pooling**  
  The application uses **Tomcat's Database Connection Pooling** to efficiently manage connections to the **MySQL** database. This ensures optimal performance, resource management, and scalability by reusing database connections instead of opening a new one for every request.

- **Sweet Alerts for Enhanced User Experience**  
  Notifications and confirmations are handled using **Sweet Alerts**, a modern, customizable alert system that enhances the overall user experience. Whether it's confirming a delete action or showing success/failure alerts, Sweet Alerts make interactions intuitive and visually appealing.

- **Hibernate ORM for Database Interactions**  
  The application uses **Hibernate ORM** to manage data persistence and perform database operations. Hibernate ensures smooth interaction between the Java application and the MySQL database while minimizing the amount of boilerplate SQL code required.

- **MVC Architecture for Clean Codebase**  
  The app is built following the **Model-View-Controller (MVC)** architecture, separating business logic, user interface, and data management. This improves maintainability and allows for easier scaling and feature updates.

## 🖼 Screenshots

### 1. Landing View

The Landing page.
![Landing View](https://github.com/user-attachments/assets/13c37aac-f050-4074-b9e2-41ea32c8dae3)

### 2. Add New Note

Simple interface to create a new note. Users can input the title and description text of the note.

![Add New Note](https://github.com/user-attachments/assets/b233e0d2-52f6-4e29-8e3e-014e5eb1563b)

### 3. Edit Note

Allows users to update an existing note. The original content is pre-loaded for easy editing.  
 ![Edit Note](https://github.com/user-attachments/assets/a3b72aa2-c59d-4e6a-814e-6102ff1a2158)

### 4. Show All Notes

Allows users to see all the notes in the system.
![Show All Notes](https://github.com/user-attachments/assets/f760aaba-a85e-401d-b1ff-d7aea3176d92)

### 5. Sweet Alerts in Action

Sweet Alerts confirm user actions, such as successfully saving a note or deleting a note.  
 ![Sweet Alerts in Action](https://github.com/user-attachments/assets/1e196bd6-235b-4678-b255-0ce07cb9193a)

## 🛠 Tech Stack

- **Backend:** Java (Servlets, JSP, JSTL)
- **Frontend:** JSP, JSTL, JavaScript
- **Database:** MySQL
- **ORM:** Hibernate
- **AJAX:** XMLHttpRequest for seamless asynchronous requests
- **UI Enhancements:** Sweet Alerts for custom notifications
- **Connection Pooling:** Tomcat Database Connection Pool for optimized database management
- **Other:** HTML, CSS, Bootstrap for UI design

## ⚙️ Installation & Setup

1. **Clone the repository**  
   Clone the GitHub repository to your local machine using the following command:

   ```bash
   git clone https://github.com/GourabMCFC/Note-Taker-Servlet-Hibernate.git
   ```

2. **Set up MySQL**  
   Create a new **MySQL** database named _NoteTaker_ for the application. Update the database connection details, such as the username, password, and database URL, in the `hibernate.cfg.xml` file.

3. **Build the project using Maven**  
   Build the project using **Maven** to manage dependencies and create the WAR file for deployment:

   ```bash
   mvn clean install
   ```

4. **Configure Tomcat Connection Pooling**  
   To enhance the efficiency of database interactions, configure **Tomcat's Database Connection Pooling** in your `context.xml` or `server.xml` file. This will ensure that the application can handle multiple database requests simultaneously without opening a new connection for each request.

5. **Deploy to Apache Tomcat**  
   Deploy the generated WAR file to your **Apache Tomcat** server by copying it to the `webapps` folder or using the Tomcat Manager interface.

6. **Access the application**  
   After deployment, access the application in your browser by navigating to:
   ```link
   http://localhost:8080/NoteTaker
   ```
