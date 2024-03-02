# Job Match Percentage Analyzer

## Overview

The Job Match Percentage Analyzer is a Streamlit application designed to match the percentage between a job description and a resume uploaded by the user. It provides suggestions for improvement based on the analysis. The core idea behind the project is to streamline the job application process by quantifying the match between a candidate's resume and the requirements of a job listing.

## Background

In today's competitive job market, it's crucial for job seekers to tailor their resumes to specific job listings. However, manually analyzing the match between a resume and a job description can be time-consuming and subjective. This application aims to automate and quantify this process, helping job seekers optimize their resumes for specific job applications.

## Need

The need for this project aqhb  nb njb jb vrises from the challenges faced by job seekers in effectively matching their skills and experiences with the requirements of job listings. By providing a tool that quantifies this match and offers actionable suggestions for improvement, the application aims to empower job seekers in their job search process.

## Approach

The application uses the Google Gemini Pro API for natural language processing (NLP) analysis of both the job description and the uploaded resume. The following steps outline the approach taken:

1. **Input**: The user uploads a job description and their resume through the Streamlit interface.
2. **Analysis**: The application utilizes the Google Gemini Pro API to analyze the text content of both the job description and the resume.
3. **Match Percentage Calculation**: Based on the analysis results, the application calculates a match percentage indicating how well the resume aligns with the job description.
4. **Suggestions**: The application provides suggestions for improvement based on areas where the resume may be lacking in terms of matching the job requirements.
5. **Output**: The user receives a comprehensive report detailing the match percentage and suggestions for improvement.

## Deliverables

The main deliverable of this project is the Streamlit application deployed as a Docker image. Additionally, the project includes documentation, including this README file, to guide users on how to use the application effectively.

## Usage

To use the Job Match Percentage Analyzer, follow these steps:

1. Clone the repository.
2. Install the necessary dependencies.
3. Run the Streamlit application locally or deploy it using Docker.
4. Upload a job description and your resume.
5. View the match percentage and suggestions for improvement.

## Docker Image 
You can take pull from : https://hub.docker.com/r/paritosh1234/ats_resume

## Future Improvements

Some potential improvements for the project include:

- Enhancing the NLP analysis to provide more accurate match percentages.
- Integrating additional features, such as keyword highlighting and skill gap analysis.
- Improving the user interface for a more intuitive user experience.

## Contributors

- Paritosh Sharma - Project Lead & Developer
