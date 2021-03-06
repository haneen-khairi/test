 Web Test Project - Job Board

Your task is to implement a simple Job Board web application. Detailed specifications for the test project are provided below. We estimate that you will not need more than a single weekend at relaxed coding speed to implement it.

## Project Description

The Job Board web application will be used by your Users (Job Seekers) to perform the following tasks:

- List Job Posts
- Apply to Jobs

Every User (Job Seeker) will have their own job applications that have statuses that can be checked (seen, not seen). Job Posts are managed by other Users (Admin).

The Job Board web application will be used by your Admin User to perform the following tasks:

- Manage A Job Post
- List Job Applications
- List Job Posts

## Technical details

Your web application should implement MVC design pattern.

The following technical requirements are placed on your implementation:

### Backend

- Use Ruby (v2.3+) with Ruby on Rails framework (v5.0+)
- HTTP responses should follow best practices
- Implement authentication that would be the best for the clients by your opinion check `devise_token_auth` or `JWT`

### Frontend
- UI implementation can be a combination of native javascript, css and html
- All html pages must be responsive, expected clients are desktops, laptops, tablets and mobiles, all with different screen sizes.
- bootstrap css must be used to maintain page responsivess design.
- layout look and css theme color can be of developer choice and should be clear, profissional and easy to use.

### Resource Permission

- Job Seekers are not authorized to manage the Job
- Admin Users are not authorized to destroy job applications and users.
- You can use either the `cancancan` or `pundit` gems to do this

### Data Storage

- All data should be stored in a relational database, use Sqlite

### Users

- Registrations should be done with email and password (Job Seekers)
- There should be one Admin account, which will manage Job Posts
- You should implement the following functionality:
  - User Registration (Job Seekers only)
  - User Login

### Job Post data

- You should implement the following functionality:
  - Job Post must have: title, description
  - Create a new Job Post (Admin)
  - Update or delete existing Job Post (Admin)
  - List all Job Applications (Admin & Job Seeker)

### Job Applications

- You should implement the following functionality:
  - Job seekers apply to any job by creating a Job Application that will have a status of (Not Seen) by default
  - When an Admin User views a Job Application this will change their status to (Seen)

### Test / Rspec

- Your code should be tested using Rspec
  - Models
  - Controllers 

### Bonus task (NOT mandatory)

- Allow Users to add resumes and send them to be stored on AWS S3
- Send emails to the user (Job Seeker) once the application is seen (You can use MailTrap for this)
- Implement search for Jobs by title or creation date
- Add Expiry date to the job post so it won't apper to the job seeker after a specific date
- Use ElasticSearch to search for keywords in the Job Description
- Implement CI using Travis and use Coverall for code 

<!-- des -->
rails routes
                                  Prefix Verb   URI Pattern
               Controller#Action
                            applications GET    /applications(.:format)
               applications#index
                                         POST   /applications(.:format)
               applications#create
                         new_application GET    /applications/new(.:format)
               applications#new
                        edit_application GET    /applications/:id/edit(.:format)
               applications#edit
                             application GET    /applications/:id(.:format)
               applications#show
                                         PATCH  /applications/:id(.:format)
               applications#update
                                         PUT    /applications/:id(.:format)
               applications#update
                                         DELETE /applications/:id(.:format)
               applications#destroy
                        new_user_session GET    /users/sign_in(.:format)
               devise/sessions#new
                            user_session POST   /c(.:format)
               devise/sessions#create
                    destroy_user_session DELETE /users/sign_out(.:format)
               devise/sessions#destroy
                       new_user_password GET    /users/password/new(.:format)
               devise/passwords#new
                      edit_user_password GET    /users/password/edit(.:format)
               devise/passwords#edit
                           user_password PATCH  /users/password(.:format)
               devise/passwords#update
                                         PUT    /users/password(.:format)
               devise/passwords#update
                                         POST   /users/password(.:format)
               devise/passwords#create
                cancel_user_registration GET    /users/cancel(.:format)
               devise/registrations#cancel
                   new_user_registration GET    /users/sign_up(.:format)
               devise/registrations#new
                  edit_user_registration GET    /users/edit(.:format)
               devise/registrations#edit
                       user_registration PATCH  /users(.:format)
               devise/registrations#update
                                         PUT    /users(.:format)
               devise/registrations#update
                                         DELETE /users(.:format)
               devise/registrations#destroy
                                         POST   /users(.:format)
               devise/registrations#create
                                    jobs GET    /jobs(.:format)
               jobs#index
                                         POST   /jobs(.:format)
               jobs#create
                                 new_job GET    /jobs/new(.:format)
               jobs#new
                                edit_job GET    /jobs/:id/edit(.:format)
               jobs#edit
                                     job GET    /jobs/:id(.:format)
               jobs#show
                                         PATCH  /jobs/:id(.:format)
               jobs#update
                                         PUT    /jobs/:id(.:format)
               jobs#update
                                         DELETE /jobs/:id(.:format)
               jobs#destroy
                                    root GET    /
               jobs#index#   t e s t  
 #   t e s t  
 #   t e s t  
 #   t e s t  
 #   t e s t  
 #   t e s t  
 #   t e s t  
 #   t e s t  
 