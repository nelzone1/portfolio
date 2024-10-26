<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NELSON OBOH Portfolio</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        header {
            background: url('techy.jpg') center/cover no-repeat;
            color: #fff;
            text-align: center;
            padding: 3em 0;
            position: relative;
        }

        header img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 5px solid #fff;
            margin-bottom: 15px;
        }

        h1 {
            margin: 0;
            font-size: 2.5em;
        }

        h2, h3, h4 {
            color: #4285f4;
        }

        section {
            max-width: 800px;
            margin: 2em auto;
            padding: 1.5em;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            border-bottom: 2px solid #4285f4;
            padding-bottom: 0.5em;
            margin-bottom: 1em;
        }

        p {
            color: #555;
            margin-bottom: 1em;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            position: relative;
            padding-left: 1.5em;
            margin-bottom: 0.5em;
        }

        ul li::before {
            content: '\2022';
            color: #4285f4;
            position: absolute;
            left: 0;
            font-size: 1.2em;
        }

        footer {
            text-align: center;
            padding: 1em 0;
            background-color: #4285f4;
            color: #fff;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        /* Responsive styles */
        @media (max-width: 600px) {
            header {
                padding: 2em 0;
            }

            header img {
                width: 120px;
                height: 120px;
            }

            h1 {
                font-size: 2em;
            }
        }
    </style>
</head>

<body>

    <header>
        <img src="Nelzone.jpg" alt="Nelson Oboh">
        <h1>Nelson Oboh</h1>
        <p>DevOps Engineer</p>
    </header>

    <section>
        <h2>Get to Know Me</h2>
        <p>I'm a seasoned DevOps Engineer with a proven track record of five years in architecting, implementing, and optimizing robust CI/CD and infrastructure automation solutions that meet business needs. I am eager to contribute my skills to a dynamic team and help achieve their goals.</p>
    </section>

    <section>
        <h2>Professional Experience</h2>

        <h3>Dell Technologies</h3>
        <p><strong>Role:</strong> DevOps Engineer | <strong>Duration:</strong> Sep 2020 - Current</p>
        <h4>Roles and Responsibilities:</h4>
        <ul>
            <li>Supported multiple AWS cloud instances running Ubuntu and RHEL Linux.</li>
            <li>Decomposed a monolithic app into microservices, hosting the React-based client on S3 with CloudFront and the server on AWS ECS.</li>
            <li>Designed and maintained monitoring solutions with Datadog for a complex microservices architecture.</li>
        </ul>

        <h3>Becton Dickinson</h3>
        <p><strong>Role:</strong> DevOps Engineer/Linux Administrator | <strong>Duration:</strong> May 2018 - Sep 2020</p>
        <h4>Roles and Responsibilities:</h4>
        <ul>
            <li>Built and maintained CI/CD pipelines using Azure DevOps and AWS Code Pipeline.</li>
            <li>Implemented serverless architectures with AWS Lambda, achieving a 30% reduction in operational costs.</li>
            <li>Automated provisioning and management with Ansible playbooks.</li>
        </ul>
    </section>

    <section>
        <h2>Education</h2>
        <p>Bachelor of Science in Computer Science, Ambrose Alli University, Edo State, Nigeria (Sep 2011)</p>
        <p>Computer Networking and Troubleshooting, St. Angelos Institute for Technology and Management, Kalyan, Mumbai, India</p>
    </section>

    <section>
        <h2>Certifications</h2>
        <p>AWS Certified Solutions Architect Associate</p>
        <p>CompTIA Linux+</p>
    </section>

    <section>
        <h2>Skills</h2>
        <p>DevOps Tools: Jenkins, GitLab, CI/CD, Terraform, Ansible, Docker, Kubernetes</p>
    </section>

    <footer>
        <p>&copy; 2024 Technel</p>
    </footer>

</body>

</html>
