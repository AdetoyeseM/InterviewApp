import 'package:flutter/material.dart';

class  Slide{
  final String imageUrl;
  final String title;
  final String description;

Slide({
@required this.imageUrl,
@required this.description,
@required this.title

});

}

final slideList = [
  Slide (
    imageUrl: 'assets/images/interview1.jpg',
    title: 'Interview Tips',
    description: 'Clear your doubt of getting your dream Job...In this awesome app, you will acquianted with all the tips needed to Succeed in a job interview...'
    
  ),
   Slide (
    imageUrl: 'assets/images/interview4.jpg',
    title: 'Dressing Etiquettes',
    description: 'Dress the way you wish to be addressed, To perform distinctly and getting that dream job, your dressing is parmount...'
  
  
  ),
   Slide (
    imageUrl: 'assets/images/interview5.jpg',
    title: 'CV & Cover Letters builder',
    description: 'Wants to know the kind of CV and Cover letter that attracts HRs?...then you are at the right place...'
     
  
  ),
   Slide (
    imageUrl: 'assets/images/interview3.jpg',
    title: 'Salary Negotiation',
    description: 'Do you even know you worth?...We are here to give you the optimum tips to negotiate your pay...'
     
  
  ),
   Slide (
    imageUrl: 'assets/images/interview2.jpg',
    title: 'Job Search',
    description: 'Be Informed!, they are numerous Jobs out there only for you to check if you fit in and apply...'
  
  ),


  
];
