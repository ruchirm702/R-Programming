# LAB - BINOMIAL DISTRIBUTIONS



# A manufacturer of metal pistons finds that on the average, 12% of his pistons are rejected because they are either oversize
#or undersize. What is the probability that a batch of 10 pistons will contain

#   (a) no more than 2 rejects?
  pbinom(2,10,0.12)

#   (b) at least 2 rejects?
   pbinom(2,10,0.12,lower.tail = FALSE)
   
   
   ######################################
   
#Probability that in 60 tosses of a fair coin the head comes up
   
   # (i) 20,25 or 30 times
      dbinom(20,60,0.5)
      dbinom(20,60,0.5)
      dbinom(20,60,0.5)
   
    
   # (ii) less than 20 times
      
      pbinom(19,60,0.5)
   
   
   # (iii) between 20 and 30 times 
      
      pbinom(30,60,.5)-pbinom(19,60,.5) 
      
      ########################################
      
      
# Consider an exam that contains 10 multiple-choice questions with 4 possible choices for each question, 
# only one of which is correct. Suppose a student is to select the answer for every question randomly. 
# Let X be the number of questions the student answers correctly. 

      # a. What is the probability for the student to get no answer correct?
      
          dbinom(0,10,.25)
        
      #   b. What is the probability for the student to get two answers correct?
          
          dbinom(2,10,.25)
      
      #   c. What is the probability for the student to fail the test (i.e., to have less than 6 correct answers)?
        
          pbinom(5,10,.25)
   
      ###########################################
          
# Medical professionals use the binomial distribution to model the probability that a certain number of patients will experience 
# side effects as a result of taking new medications. For example, suppose it is known that 5% of adults who take a certain
# medication experience negative side effects.
# Find the probability that more than a certain number of patients in a random sample of 100 will experience negative side effects.

#           a. P(X > 5 patients experience side effects) 
          
                pbinom(5,100,0.05,lower.tail = FALSE)
          
#           b. P(X > 10 patients experience side effects) 
          
                pbinom(10,100,0.05,lower.tail = FALSE)
          
#           c. P(X > 15 patients experience side effects) 
          
                 pbinom(10,100,0.05,lower.tail = FALSE)
          
          
           ##############################################
                 
# Park systems use the binomial distribution to model the probability that rivers overflow a certain number of times each
# year due to excessive rain. For example, suppose it is known that a given river overflows during 5% of all storms.
# If there are 20 storms in a given year, Find the probability that the river overflows a certain number of times:
#   
#                  a. P(X = 0 overflows)
                 
                 dbinom(0,20,0.05)
                 
#                  b. P(X = 1 overflow) 
              
                 dbinom(1,20,0.05)
                 
#                  c. P(X = 2 overflows) 
                 
                  dbinom(2,20,0.05)
                  