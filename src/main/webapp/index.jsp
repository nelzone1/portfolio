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
            background-color: #eef2f3;
            color: #333;
            line-height: 1.6;
        }

        header {
            background: url('techy.jpg') center/cover no-repeat;
            color: #fff;
            text-align: center;
            padding: 5em 0;
            position: relative;
        }

        header h1 {
            font-size: 3em;
            margin: 0;
        }

        header p {
            font-size: 1.5em;
            margin: 0.5em 0 2em;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2em;
        }

        section {
            margin-bottom: 3em;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 2em;
        }

        h2 {
            color: #4285f4;
            border-bottom: 2px solid #4285f4;
            padding-bottom: 0.5em;
            margin-bottom: 1em;
        }

        .experience, .skills {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5em;
        }

        .card {
            flex: 1 1 calc(30% - 1em);
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 1.5em;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .footer {
            text-align: center;
            padding: 2em 0;
            background-color: #4285f4;
            color: #fff;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        /* Responsive styles */
        @media (max-width: 800px) {
            .card {
                flex: 1 1 calc(45% - 1em);
            }
        }

        @media (max-width: 600px) {
            header {
                padding: 3em 0;
            }

            header h1 {
                font-size: 2.5em;
            }

            header p {
                font-size: 1.2em;
            }

            .card {
                flex: 1 1 100%;
            }
        }
    </style>
</head>

<body>

    <header>
        <h1>Nelson Oboh</h1>
        <p>DevOps Engineer</p>
    </header>

    <div class="container">
        <section>
            <h2>About Me</h2>
            <p>I'm a seasoned DevOps Engineer with five years of experience in architecting, implementing, and optimizing robust CI/CD and infrastructure automation solutions. I am passionate about contributing my skills to a dynamic team to achieve business goals.</p>
        </section>

        <section>
            <h2>Professional Experience</h2>
            <div class="experience">
                <div class="card">
                    <h3>Dell Technologies</h3>
                    <p><strong>Role:</strong> DevOps Engineer</p>
                    <p><strong>Duration:</strong> Sep 2020 - Current</p>
                    <ul>
                        <li>Supported multiple AWS cloud instances running Ubuntu and RHEL Linux.</li>
                        <li>Decomposed a monolithic app into microservices.</li>
                        <li>Designed monitoring solutions using Datadog.</li>
                    </ul>
                </div>
                <div class="card">
                    <h3>Becton Dickinson</h3>
                    <p><strong>Role:</strong> DevOps Engineer/Linux Administrator</p>
                    <p><strong>Duration:</strong> May 2018 - Sep 2020</p>
                    <ul>
                        <li>Built CI/CD pipelines using Azure DevOps and AWS Code Pipeline.</li>
                        <li>Implemented serverless architectures with AWS Lambda.</li>
                        <li>Automated provisioning and management with Ansible.</li>
                    </ul>
                </div>
            </div>
        </section>

        <section>
            <h2>Education</h2>
            <p>B.Sc. in Computer Science, Ambrose Alli University, Edo State, Nigeria (Sep 2011)</p>
            <p>Computer Networking and Troubleshooting, St. Angelos Institute for Technology and Management, Mumbai, India</p>
        </section>

        <section>
            <h2>Certifications</h2>
            <p>AWS Certified Solutions Architect Associate</p>
            <p>CompTIA Linux+</p>
        </section>

        <section>
            <h2>Skills</h2>
            <div class="skills">
                <div class="card">
                    <h3>DevOps Tools</h3>
                    <p>Jenkins, GitLab, CI/CD, Terraform</p>
                </div>
                <div class="card">
                    <h3>Containerization</h3>
                    <p>Docker, Kubernetes</p>
                </div>
                <div class="card">
                    <h3>Languages</h3>
                    <p>Bash, Python, Java</p>
                </div>
            </div>
        </section>
    </div>

    <footer class="footer">
        <p>&copy; 2024 Technel</p>
    </footer>

</body>

</html>
