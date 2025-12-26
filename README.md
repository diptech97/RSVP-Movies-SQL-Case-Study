
# 🎬 RSVP Movies Database Project

## 📌 Project Name
**RSVP Movies**

## 📖 Project Description
RSVP Movies is a SQL-based database project designed to manage and analyze movie-related data such as movies, directors, ratings, and financial performance.  
The project demonstrates database design, table relationships, and SQL queries for meaningful insights like top-rated movies, profits, and director-wise movie listings.

This project is ideal for practicing **SQL fundamentals**, **joins**, **aggregations**, and **data analysis queries**.

---

## 🛠️ Technologies Used
- **Database:** MySQL  
- **Language:** SQL  

---

## 🗂️ Database Structure

### 1️⃣ Movies Table
```sql
Movies(
  movie_id INT PRIMARY KEY,
  title VARCHAR(100),
  release_year YEAR,
  genre VARCHAR(50),
  language VARCHAR(30),
  budget DECIMAL(10,2),
  revenue DECIMAL(10,2)
)
```

### 2️⃣ Directors Table
```sql
Directors(
  director_id INT PRIMARY KEY,
  name VARCHAR(100)
)
```

### 3️⃣ Movie_Director Table
```sql
Movie_Director(
  movie_id INT,
  director_id INT,
  FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
  FOREIGN KEY (director_id) REFERENCES Directors(director_id)
)
```

### 4️⃣ Ratings Table
```sql
Ratings(
  movie_id INT,
  rating DECIMAL(3,1),
  FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
)
```

---

## 📊 Key SQL Queries

- Movies released after 2017  
- Highest revenue movie  
- Movies with rating > 7  
- Directors and their movies  
- Profit calculation (Revenue - Budget)  
- Average rating per genre  
- Top 3 movies by rating  

---

## 🎯 Learning Outcomes
- Database normalization and relationships  
- SQL joins and aggregations  
- Financial and rating analysis  
- Real-world database modeling  

---

## 👤 Author
**Diptamon Chakraborty**  
📧 chakrabortydip9962@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/diptamon-chakraborty-498051179/  
🐙 GitHub: https://github.com/diptech97
