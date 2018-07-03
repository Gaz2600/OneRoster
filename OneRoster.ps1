####################################################
#   ____             _____           _             #
#  / __ \           |  __ \         | |            #
# | |  | |_ __   ___| |__) |___  ___| |_ ___ _ __  #
# | |  | | '_ \ / _ \  _  // _ \/ __| __/ _ \ '__| #
# | |__| | | | |  __/ | \ \ (_) \__ \ ||  __/ |    #
#  \____/|_| |_|\___|_|  \_\___/|___/\__\___|_|    #
#                                                  #
####################################################


##################################
# Convert OneRoster v1.1 to v1.0 #
##################################

#orgs.csv
$orgsIMP = 'E:\OneRoster\Data\v1.1\orgs.csv'
$orgsEXP = 'E:\OneRoster\Data\v1.0\orgs.csv'
Import-CSV $orgsIMP |
 Select-Object  `
    @{name= 'sourcedId';expression={$_.'sourcedId'}}, `
    @{name= 'status';expression={$_.'status'}}, `
    @{name= 'dateLastModified';expression={$_.'dateLastModified'}}, `
    @{name= 'name';expression={$_.'name'}}, `
    @{name= 'type';expression={$_.'type'}}, `
    @{name= 'identifier';expression={$_.'identifier'}}, `
    @{name= 'metadata.classification';expression={''}}, `
    @{name= 'metadata.gender';expression={''}}, `
    @{name= 'metadata.boarding';expression={''}}, `
    @{name= 'parentSourcedId';expression={$_.'parentSourcedId'}} | Export-Csv -NoTypeInformation $orgsEXP

#users.csv 
$usersIMP = 'E:\OneRoster\Data\v1.1\users.csv'
$usersEXP = 'E:\OneRoster\Data\v1.0\users.csv'

Import-CSV $usersIMP |
 Select-Object  `
    @{name= 'sourcedId';expression={$_.'sourcedId'}}, `
    @{name= 'status';expression={$_.'status'}}, `
    @{name= 'dateLastModified';expression={$_.'dateLastModified'}}, `
    @{name= 'enabledUser';expression={$_.'enabledUser'}}, `
    @{name= 'orgSourcedIds';expression={$_.'orgSourcedIds'}}, `
    @{name= 'role';expression={$_.'role'}}, `
    @{name= 'username';expression={$_.'username'}}, `
    @{name= 'userId';expression={$_.'userIds'}}, `
    @{name= 'givenName';expression={$_.'givenName'}}, `
    @{name= 'familyName';expression={$_.'familyName'}}, `
    @{name= 'identifier';expression={$_.'identifier'}}, `
    @{name= 'email';expression={$_.'email'}}, `
    @{name= 'sms';expression={$_.'sms'}}, `
    @{name= 'phone';expression={$_.'phone'}}, `
    @{name= 'agents';expression={$_.'agentSourcedIds'}} | Export-Csv -NoTypeInformation $usersEXP

#courses.csv
$coursesIMP = 'E:\OneRoster\Data\v1.1\courses.csv'
$coursesEXP = 'E:\OneRoster\Data\v1.0\courses.csv'

Import-CSV $coursesIMP |
 Select-Object  `
    @{name= 'sourcedId';expression={$_.'sourcedId'}}, `
    @{name= 'status';expression={$_.'status'}}, `
    @{name= 'dateLastModified';expression={$_.'dateLastModified'}}, `
    @{name= 'schoolYearId';expression={$_.'schoolYearSourcedId'}}, `
    @{name= 'metadata.duration';expression={''}}, `
    @{name= 'title';expression={$_.'title'}}, `
    @{name= 'courseCode';expression={$_.'courseCode'}}, `
    @{name= 'grade';expression={$_.'grades'}}, `
    @{name= 'orgSourcedId';expression={$_.'orgSourcedId'}}, `
    @{name= 'subjects';expression={$_.'subjects'}} | Export-Csv -NoTypeInformation $coursesEXP

#classes.csv
$classesIMP = 'E:\OneRoster\Data\v1.1\classes.csv'
$classesEXP = 'E:\OneRoster\Data\v1.0\classes.csv'

Import-CSV $classesIMP |
 Select-Object  `
    @{name= 'sourcedId';expression={$_.'sourcedId'}}, `
    @{name= 'status';expression={$_.'status'}}, `
    @{name= 'dateLastModified';expression={$_.'dateLastModified'}}, `
    @{name= 'title';expression={$_.'title'}}, `
    @{name= 'grade';expression={$_.'grades'}}, `
    @{name= 'courseSourcedId';expression={$_.'courseSourcedId'}}, `
    @{name= 'classCode';expression={$_.'classCode'}}, `
    @{name= 'classType';expression={$_.'classType'}}, `
    @{name= 'location';expression={$_.'location'}}, `
    @{name= 'schoolSourcedId';expression={$_.'schoolSourcedId'}}, `
    @{name= 'termSourcedId';expression={$_.'termSourcedIds'}}, `
    @{name= 'subjects';expression={$_.'subjects'}} | Export-Csv -NoTypeInformation $classesEXP

#enrollments.csv
$enrollmentsIMP = 'E:\OneRoster\Data\v1.1\enrollments.csv'
$enrollmentsEXP = 'E:\OneRoster\Data\v1.0\enrollments.csv'

Import-CSV $enrollmentsIMP |
 Select-Object  `
    @{name= 'sourcedId';expression={$_.'sourcedId'}}, `
    @{name= 'classSourcedId';expression={$_.'classSourcedId'}}, `
    @{name= 'schoolSourcedId';expression={$_.'schoolSourcedId'}}, `
    @{name= 'userSourcedId';expression={$_.'userSourcedId'}}, `
    @{name= 'role';expression={$_.'role'}}, `
    @{name= 'status';expression={$_.'status'}}, `
    @{name= 'dateLastModified';expression={$_.'dateLastModified'}}, `
    @{name= 'primary';expression={$_.'primary'}} | Export-Csv -NoTypeInformation $enrollmentsEXP

#academicSessions.csv
$academicSessionsIMP = 'E:\OneRoster\Data\v1.1\academicSessions.csv'
$academicSessionsEXP = 'E:\OneRoster\Data\v1.0\academicSessions.csv'

Import-CSV $academicSessionsIMP |
 Select-Object  `
    @{name= 'sourcedId';expression={$_.'sourcedId'}}, `
    @{name= 'status';expression={$_.'status'}}, `
    @{name= 'dateLastModified';expression={$_.'dateLastModified'}}, `
    @{name= 'title';expression={$_.'title'}}, `
    @{name= 'type';expression={$_.'type'}}, `
    @{name= 'startDate';expression={$_.'startDate'}}, `
    @{name= 'endDate';expression={$_.'endDate'}}, `
    @{name= 'parentSourcedId';expression={$_.'parentSourcedId'}} | Export-Csv -NoTypeInformation $academicSessionsEXP
