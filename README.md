# Rails Reboot

- Student, Course, and Enrollment (Join table):
    - Student: Represents students. `(username, email)`
    - Course: Represents different courses available. `(name, price)`
    - Enrollment: A join table that establishes a many-to-many relationship between students and courses. It stores the associations between students and the courses they are enrolled in. `(student_id, course_id, started_at)`

- Try to understand the flow of the code within the app (Use the drawing)

- Code in Silo following this order for every feature:
    1. Model generations
    2. Associations
    3. Validations
    4. Seeds
    5. routes
- Then for every feature 🔁
- route
- controller
- view


## User stories

1. As a user, I can see all courses
2. As a user, I can see details about one course
3. As a user, I can enroll an student into a course


## Getting started

```zsh
cd ~/code/$GITHUB_USERNAME
gh repo clone dedemenezes/rails-enroll-students
cd rails-enroll-students
bundle install
yarn install
rails db:create
```

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
