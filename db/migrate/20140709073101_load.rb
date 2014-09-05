class Load < ActiveRecord::Migration
  def up
    # Create initial users.
    down
    cr = User.new(:login => "Crushton")
    cr.save(:validate => false)
    

    # Create initial units.
    unit1 = Unit.new(:name => "What is Fair? (Measures of central tendency) ")
    unit1.user = cr
    unit1.save(:validate => false)
    
    # Create initial goals.
    goal1 = Goal.new(:level => "4", :goal => "DATA ANALYSIS & PROBABILITY 5. Interpret, organize, and concepts of probability")
    goal1.unit = unit1
    goal1.save(:validate => false)
    
    goal2 = Goal.new(:level => "3", :goal => "b. Predict patterns or generalize trends based on given data.")
    goal2.unit = unit1
    goal2.save(:validate => false)

    goal3 = Goal.new(:level => "3", :goal => "c. Explain the role of fair and bias in sampling and its effect on data.")
    goal3.unit = unit1
    goal3.save(:validate => false)

    goal4 = Goal.new(:level => "3", :goal => "f. Construct and use a variety of methods (i.e., organized lists, tree-diagrams, Fundamental Counting Principle) to solve real-world problems.")
    goal4.unit = unit1
    goal4.save(:validate => false)

    goal5 = Goal.new(:level => "3", :goal => "g. Collect data.  Select and justify the most appropriate representations to organize, record and communicate data.")
    goal5.unit = unit1
    goal5.save(:validate => false)

    goal6 = Goal.new(:level => "3", :goal => "h. Use a given mean, mode and/or median of a set of data to construct a data set and determine missing values from a data set.")
    goal6.unit = unit1
    goal6.save(:validate => false)

    goal7 = Goal.new(:level => "3", :goal => "Mathematics can give us tools that we can apply to complex problems that involve numbers, but it rarely answers all our questions or addresses all the needs in a situation.")
    goal7.unit = unit1
    goal7.save(:validate => false)

    goal8 = Goal.new(:level => "3", :goal => "Sometimes different mathematical approaches yield different solutions. Different measures of central tendency yield different solutions – the choice depends upon the context.")
    goal8.unit = unit1
    goal8.save(:validate => false)

    goal9 = Goal.new(:level => "3", :goal => "Not all solutions to real-world uses of mathematics are perfect or beyond criticism. Often, we must defend our solutions using both mathematical and non-mathematical evidence and reasoning. 
    	Questions about fairness ultimately involve decisions about values, so math is helpful only up to a point.")
    goal9.unit = unit1
    goal9.save(:validate => false)

    goal10 = Goal.new(:level => "2", :goal => "What is the best solution to a complex problem? How can I know? How can I best defend and communicate my thinking?")
    goal10.unit = unit1
    goal10.save(:validate => false)

    goal11 = Goal.new(:level => "2", :goal => "What is fair? How can mathematics help us answer that question? 
    	What are the limitations of mathematics in helping us answer that question? What is the fairest grading system?")
    goal11.unit = unit1
    goal11.save(:validate => false)

    goal12 = Goal.new(:level => "2", :goal => "How can we best use mathematical information to draw non-mathematical conclusions?")
    goal12.unit = unit1
    goal12.save(:validate => false)

    goal13 = Goal.new(:level => "2", :goal => "How can I best transform this data into useful information?
    	When should mean, median, or mode be used?
    	What are the pros and cons of each measure?
    	In whose interest is it to use which measure?")
    goal13.unit = unit1
    goal13.save(:validate => false)

    goal14 = Goal.new(:level => "1", :goal => "Definitions of mean, median, and mode; range; variation; bias; trend")
    goal14.unit = unit1
    goal14.save(:validate => false)

    goal15 = Goal.new(:level => "1", :goal => "Calculate mean, median, and mode")
    goal15.unit = unit1
    goal15.save(:validate => false)

    goal16 = Goal.new(:level => "1", :goal => "Make and defend decisions on when to use mean, median, and mode")
    goal16.unit = unit1
    goal16.save(:validate => false)

    # Create initial evidence
    evidence1 = Evidence.new(:depth => "1", :evidence => "Variety of examples for students to calculate mean, median, and mode")
    evidence1.unit = unit1
    evidence1.save(:validate => false)
    goal15.evidence = evidence1
    goal15.save(:validate => false)

    evidence2 = Evidence.new(:depth => "1", :evidence => "Multiple scenarios asking for a written defense of, 
        Which is a better measure of center in this case: mean, median or mode?")
    evidence2.unit = unit1
    evidence2.save(:validate => false)
    goal16.evidence = evidence2
    goal16.save(:validate => false)

    evidence3 = Evidence.new(:depth => "1", :evidence => "Provide definition of mean, median, and mode; range; variation; bias; trend")
    evidence3.unit = unit1
    evidence3.save(:validate => false)
    goal14.evidence = evidence3
    goal14.save(:validate => false)

    evidence4 = Evidence.new(:depth => "2", :evidence => "Defend a solution to, What is fair? And how might math help?")
    evidence4.unit = unit1
    evidence4.save(:validate => false)
    goal11.evidence = evidence4
    goal11.save(:validate => false)

    evidence5 = Evidence.new(:depth => "2", :evidence => "Defend a solution to determine which class won a race in which everyone ran, 
        and the data is ambiguous as to meaning.")
    evidence5.unit = unit1
    evidence5.save(:validate => false)
    goal13.evidence = evidence5
    goal10.evidence = evidence5
    goal8.evidence = evidence5
    goal3.evidence = evidence5
    goal13.save(:validate => false)
    goal10.save(:validate => false)
    goal8.save(:validate => false)
    goal3.save(:validate => false)

    evidence6 = Evidence.new(:depth => "2", :evidence => "Investigate several situations and draw conclusions for, How important is range (variation) and trend when reaching a solution?  
            Should they matter in assigning a final result? Should you be rewarded or penalized for consistency/inconsistency and downward/upward trend?")
    evidence6.unit = unit1
    evidence6.save(:validate => false)
    goal7.evidence = evidence6
    goal2.evidence = evidence6
    goal7.save(:validate => false)
    goal2.save(:validate => false)

    evidence7 = Evidence.new(:depth => "2", :evidence => "Several example problems providing mean, median, and/or mode with missing values to be discovered.")
    evidence7.unit = unit1
    evidence7.save(:validate => false)
    goal6.evidence = evidence7
    goal6.save(:validate => false)

    evidence8 = Evidence.new(:depth => "2", :evidence => "Come up with a situation where, depending upon your point of view, one group would want to use one measure while the other would not want that one at all.")
    evidence8.unit = unit1
    evidence8.save(:validate => false)
    goal9.evidence = evidence8
    goal9.save(:validate => false)

    evidence9 = Evidence.new(:depth => "2", :evidence => "Measure the three types of central tendency for a large set of a data and argue in defense of a best answer for, When should we use mean, median, or mode?")
    evidence9.unit = unit1
    evidence9.save(:validate => false)
    goal12.evidence = evidence9
    goal12.save(:validate => false)

    evidence10 = Evidence.new(:depth => "2", :evidence => "Based on our study of various measures of central tendency, 
        and the pros and cons of using “averages” in various situations, 
        propose and defend a “fair” system to find the center of a known dataset.")
    evidence10.unit = unit1
    evidence10.save(:validate => false)
    goal1.evidence = evidence10
    goal4.evidence = evidence10
    goal5.evidence = evidence10
    goal1.save(:validate => false)
    goal4.save(:validate => false)
    goal5.save(:validate => false)

    # Create initial assessments
    assessment1 = Assessment.new(:rigor => "1", :assessment => "Quiz:  calculate mean, median, and mode for 24 different exercises")
    assessment1.unit = unit1
    assessment1.save(:validate => false)
    evidence1.assessments << assessment1

    assessment2 = Assessment.new(:rigor => "3", :assessment => "Expert level task: Who won this year’s 7th grade race around the campus?")
    assessment2.unit = unit1
    assessment2.save(:validate => false)
    evidence5.assessments << assessment2

    assessment3 = Assessment.new(:rigor => "1", :assessment => "Homework and class-work problems (initial answers not graded; used for feedback to student and adjustment of learning plan)")
    assessment3.unit = unit1
    assessment3.save(:validate => false)
    evidence3.assessments << assessment3
    evidence7.assessments << assessment3

    assessment4 = Assessment.new(:rigor => "2", :assessment => "Written defense of solution to group activities")
    assessment4.unit = unit1
    assessment4.save(:validate => false)
    evidence2.assessments << assessment4
    evidence4.assessments << assessment4
    evidence6.assessments << assessment4
    evidence8.assessments << assessment4
    evidence9.assessments << assessment4

    assessment5 = Assessment.new(:rigor => "3", :assessment => "How should I grade you?  Based on our study in this unit of various measures of central tendency, 
        and the pros and cons of using “averages” (calculating the mean and other such measures) in various situations, propose and defend a “fair” grading system for use in this school. 
        How should everyone’s grade in classes be calculated? Why is your system fairer than the current system (or: why is the current system the fairest?)
        Rubrics: Problem Solving, Presentation Quality")
    assessment5.unit = unit1
    assessment5.save(:validate => false)
    evidence10.assessments << assessment5
 
   # Create initial activities

   activity1 = Activity.new(:activity => "Small Groups: Who Won the Race? (Question a.) Guidance from teacher, including:<ul>
    <li>suggestions for ways to solve the problem prompt to see if other solutions might be possible</li>
    <li>prompt to graph the data to see if the model it yields is helpful</li></ul>")
   activity1.assessment = assessment2
   activity1.save(:validate => false)

   activity2 = Activity.new(:activity => "Class, small group: Brief discussion on Question a: What is fair? And how might math help?
    Ask students to draw some tentative conclusions that will be explored and ‘tested’ later in the unit")
   activity2.assessment = assessment4
   activity2.save(:validate => false)

   activity3 = Activity.new(:activity => "Class, small group: Introduction of performance task, with reminder on grading policy in this class. 
    Do a KWL – what do we know, what questions do we have: get everyone to share different examples of grading policies they have lived under or heard of from siblings and parents")
   activity3.assessment = assessment4
   activity3.save(:validate => false)

   activity4 = Activity.new(:activity => "Class: Direct instruction in mean, median, mode, with practice. Textbook and other exercises on mean, median, and mode")
   activity4.assessment = assessment3
   activity4.save(:validate => false)

   activity5 = Activity.new(:activity => "Class: Discuss further on the question of fairness – “What do we mean when we say that the rules of a game of chance are “not fair”? 
    What role does math play in our judgment?")
   activity5.assessment = assessment4
   activity5.save(:validate => false)

   activity6 = Activity.new(:activity => "Think, pair, share: Student constructs independent defense to a problem like the hook problem.
    Pairs discuss, offering feedback to each other on the quality of the other’s solution and defense. Whole class discusses examples, and tries to answer the Unit Questions i. and ii.")
   activity6.assessment = assessment4
   activity6.save(:validate => false)

   activity7 = Activity.new(:activity => "Small group task: come up with a situation where, depending upon your point of view, one group would want to use one measure while the other would not want that one at all. 
    (e.g. employee wants a raise to the median salary, while employer wants to offer the mean salary). Each group will have to explain their sample argument (and a solution to the argument, if there is one) to the whole class.")
   activity7.assessment = assessment4
   activity7.save(:validate => false)

   activity8 = Activity.new(:activity => "Class/small group. Scenario: Because of your expertise in math, you have been hired as a consultant by [choose one: NFL, Southern Conference, Rock Hall of Fame, Olympic Skating Committee] 
    to recommend a more fair way of assigning scores. Propose and defend your idea to the Executive Committee... How important is range (variation) and trend when reaching a solution?")
   activity8.assessment = assessment4
   activity8.save(:validate => false)

   activity9 = Activity.new(:activity => "Class: Return to the original problem of the unit: Now who do you think won the race? Using what has been learned, students re-evaluate the problem and their solutions to it.")
   activity9.assessment = assessment1
   activity9.save(:validate => false)

   activity10 = Activity.new(:activity => "Individual: Final Task/Question Q. iv: So, given all we have learned, what is the fairest grading system?")
   activity10.assessment = assessment5
   activity10.save(:validate => false)

   activity11 = Activity.new(:activity => "Think, pair share: Question Q. a. Students first write an answer in their journal, discuss their answers in pairs, and share answers in class. 
    Any remaining questions are filed away for another unit on the same issues.")
   activity11.assessment = assessment4
   activity11.save(:validate => false)


  end

  def down
      Goal.delete_all
      Unit.delete_all
      User.delete_all
  end
end
