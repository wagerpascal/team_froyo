# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.create!(name:  "Admin",
             email: "admin@admin.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

Instructor.create!(name:  "Hang Li",
             email: "hangli@tamu.edu",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

Topic.create!(name: "Data Structures and Algorithms")

Topic.create!(name: "Programming")

Topic.create!(name: "Basic Mathematics")


topic = Topic.find(1)

topic.quizzes.create!(question: "Quick sort algorithm is an example of?
A.  Greedy approach
B.  Improved binary search
C. Dynamic programming
D. Divide and conquer",
                  answer: "D",
                  remark: "Quick sort divides the list using pivot and then sorts in recursive manner. It uses divide and conquer approach."
)

topic.quizzes.create!(question: "Which data structures are used for Depth-first search (DFS) of a graph?
A. Queue
B. Stack
C. None of the above",
                      answer: "B",
                      remark: "Queue is used for breadth first traversal whereas stack is used for depth first traversal."
)

topic = Topic.find(2)

topic.quizzes.create!(question: "In C programming, Where to place “f” with a double constant 3.14 to specify it as a float?
A. (float)(3.14)(f)
B. (f)(3.14)
C. 3.14f
D. f(3.14)",
                      answer: "C",
                      remark: "A floating-point constant without an f, F, l, or L suffix has type double. If the letter f or F is the suffix, the constant has type float. If suffixed by the letter l or L, it has type long double."
)

topic.quizzes.create!(question: "In C programming, What function can be used to free the memory allocated by calloc()?
A. dealloc();
B. strcat();
C. free();
D. memcpy();",
                      answer: "C",
                      remark: "calloc(): Allocates space for an array elements, initializes to zero and then returns a pointer to memory. Free(): Dellocate the space allocated by calloc()"
)


topic = Topic.find(3)

topic.quizzes.create!(question: "\(\int_0^1xdx=?\)",
                      answer: "0.5",
                      remark: "\(\int xdx=1/2x^2+C\)"
)