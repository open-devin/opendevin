<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<div align="center">
  <a href="https://github.com/open-devin/opendevin/graphs/contributors"><img src="https://img.shields.io/github/contributors/open-devin/opendevin?style=for-the-badge" alt="Contributors"></a>
  <a href="https://github.com/open-devin/opendevin/network/members"><img src="https://img.shields.io/github/forks/open-devin/opendevin?style=for-the-badge" alt="Forks"></a>
  <a href="https://github.com/open-devin/opendevin/stargazers"><img src="https://img.shields.io/github/stars/open-devin/opendevin?style=for-the-badge" alt="Stargazers"></a>
  <a href="https://github.com/open-devin/opendevin/issues"><img src="https://img.shields.io/github/issues/open-devin/opendevin?style=for-the-badge" alt="Issues"></a>
  <a href="https://github.com/open-devin/opendevin/blob/main/LICENSE"><img src="https://img.shields.io/github/license/open-devin/opendevin?style=for-the-badge" alt="MIT License"></a>
  </br>
  <a href="https://join.slack.com/t/opendevin/shared_invite/zt-2etftj1dd-X1fDL2PYIVpsmJZkqEYANw"><img src="https://img.shields.io/badge/Slack-Join%20Us-red?logo=slack&logoColor=white&style=for-the-badge" alt="Join our Slack community"></a>
  <a href="https://discord.gg/mBuDGRzzES"><img src="https://img.shields.io/badge/Discord-Join%20Us-purple?logo=discord&logoColor=white&style=for-the-badge" alt="Join our Discord community"></a>
</div>

<!-- PROJECT LOGO -->
<div align="center">
  <img src="./logo.png" alt="Logo" width="200" height="200">
  <h1 align="center">OpenDevin: Code Less, Make More</h1>
</div>




<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#mission">Mission</a></li>
    <li><a href="#what-is-devin">What is Devin?</a></li>
    <li><a href="#why-opendevin">Why OpenDevin?</a></li>
    <li><a href="#project-status">Project Status</a></li>
      <a href="#get-started">Get Started</a>
      <ul>
        <li><a href="#1-requirements">1. Requirements</a></li>
        <li><a href="#2-build-and-setup">2. Build and Setup</a></li>
        <li><a href="#3-run-the-application">3. Run the Application</a></li>
        <li><a href="#4-individual-server-startup">4. Individual Server Startup</a></li>
        <li><a href="#5-help">5. Help</a></li>
      </ul>
    </li>
    <li><a href="#research-strategy">Research Strategy</a></li>
    <li><a href="#how-to-contribute">How to Contribute</a></li>
    <li><a href="#join-our-community">Join Our Community</a></li>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

## Mission

[Project Demo Video](https://github.com/open-devin/opendevin/assets/38853559/71a472cc-df34-430c-8b1d-4d7286c807c9)


Welcome to OpenDevin, an open-source project that replicates Devin, an autonomous AI software engineer capable of executing complex engineering tasks and collaborating with users on software development projects. This project aims to replicate, enhance, and innovate upon Devin through the power of the open-source community.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## What is Devin?
Devin is an autonomous agent designed to navigate the complexities of software engineering. It leverages tools such as a shell, code editor, and web browser, demonstrating the potential of LLMs in software development. Our goal is to explore and expand upon Devin's capabilities, identifying its strengths and areas for improvement, to guide the progress of open code models.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## Why OpenDevin?
The OpenDevin project was created to replicate, enhance, and innovate beyond the original Devin model. By engaging the open-source community, we aim to tackle the challenges faced by Code LLMs in practical scenarios, producing work that contributes to the community and paves the way for future advancements.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## Project Status

OpenDevin is currently in development, but you can run the alpha version to see the end-to-end system in action. The project team is actively working on the following key milestones:

- **UI**: Developing a user-friendly interface, including a chat interface, a shell demonstrating commands, and a web browser.
- **Architecture**: Building a stable agent framework with a robust backend that can read, write, and run simple commands.
- **Agent Capabilities**: Enhancing the agent's abilities to generate bash scripts, run tests, and perform other software engineering tasks.
- **Evaluation**: Establishing a minimal evaluation pipeline that is consistent with Devin's evaluation criteria.

After completing the MVP, the team will focus on research in various areas, including foundation models, specialist capabilities, evaluation, and agent studies.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## Caveats and Warnings
* OpenDevin is an alpha project. It is changing quickly and may be unstable. We are working on a stable release.
* OpenDevin will issue many prompts to the LLM you configure. Most of these LLMs cost money, so be sure to set spending limits and monitor usage.
* OpenDevin runs `bash` commands within a Docker sandbox, so it should not affect your machine. But your workspace directory will be attached to that sandbox, and files in the directory may be modified or deleted.
* Our default Agent is currently the MonologueAgent, which has limited capabilities, but is fairly stable. We're working on other Agent implementations, including [SWE Agent](https://swe-agent.com/). You can [read about our current set of agents here](./docs/documentation/Agents.md).

## Get Started
The easiest way to run OpenDevin is with Docker.
Run:
```bash
# Your OpenAI API key, or any other LLM API key
export LLM_API_KEY="sk-..."

# The directory you want OpenDevin to modify. MUST be an absolute path!
export WORKSPACE_DIR=$(pwd)/workspace

docker run \
    -e LLM_API_KEY \
    -e WORKSPACE_MOUNT_PATH=$WORKSPACE_DIR \
    -v $WORKSPACE_DIR:/opt/workspace_base \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 3000:3000 \
    ghcr.io/open-devin/opendevin:main
```
Replace `$(pwd)/workspace` with the path to the code you want OpenDevin to work with.

You can find opendevin running at `http://localhost:3000`.

See [Development.md](Development.md) for instructions on running OpenDevin without Docker.

## LLM Backends
OpenDevin works with any LLM backend.
For a full list of available LLM providers and models, consult the
[litellm documentation](https://docs.litellm.ai/docs/providers).

The `LLM_MODEL` environment variable controls which model is used in programmatic interactions,
but selecting a model in the OpenDevin UI will override this setting.

The following environment variables might be necessary for some LLMs:
* `LLM_API_KEY`
* `LLM_BASE_URL`
* `LLM_EMBEDDING_MODEL`
* `LLM_DEPLOYMENT_NAME`
* `LLM_API_VERSION`

**Note on Alternative Models:**
Some alternative models may prove more challenging to configure than others.
We will soon release LLM-specific documentation to guide you through the setup process.
If you've already configured a model other than OpenAI's GPT,
we encourage you to [share your setup instructions with us](https://github.com/open-devin/opendevin/issues/417).

Documentation for running with local models using ollama is available [here](./docs/documentation/LOCAL_LLM_GUIDE.md).

## Research Strategy

Achieving full replication of production-grade applications with LLMs is complex. Our strategy involves:

1. **Core Technical Research:** Focusing on foundational research to understand and improve the technical aspects of code generation and handling.
2. **Specialist Abilities:** Enhancing the effectiveness of core components through data curation, training methods, and more.
3. **Task Planning:** Developing capabilities for bug detection, codebase management, and optimization.
4. **Evaluation:** Establishing comprehensive evaluation metrics to better understand and improve our models.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## How to Contribute

OpenDevin is a community-driven project that welcomes contributions from everyone. Whether you're a developer, researcher, or interested in advancing software engineering with AI, there are many ways to get involved:

- **Code Contributions:** Help us develop the core functionalities, frontend interface, or sandboxing solutions.
- **Research and Evaluation:** Contribute to our understanding of LLMs in software engineering, participate in evaluating the models, or suggest improvements.
- **Feedback and Testing:** Use the OpenDevin toolset, report bugs, suggest features, or provide feedback on usability.

For details, please check [this document](./CONTRIBUTING.md).

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## Join Our Community

We have both a Slack workspace for collaboration on building OpenDevin and a Discord server for discussion about anything related, such as this project, LLM, agents, etc.

* [Slack workspace](https://join.slack.com/t/opendevin/shared_invite/zt-2etftj1dd-X1fDL2PYIVpsmJZkqEYANw)
* [Discord server](https://discord.gg/mBuDGRzzES)

If you would like to contribute, feel free to join our community (note that there is no need to fill in the [form](https://forms.gle/758d5p6Ve8r2nxxq6)). Let's simplify software engineering together!

**Code less, make more with OpenDevin.**

[![Star History Chart](https://api.star-history.com/svg?repos=open-devin/opendevin&type=Date)](https://star-history.com/#open-devin/opendevin&Date)

## Built With

OpenDevin is built using frameworks and libraries that provide a robust foundation for development. Here are the key technologies used in the project:

![FastAPI](https://img.shields.io/badge/FastAPI-black?style=for-the-badge) ![uvicorn](https://img.shields.io/badge/uvicorn-black?style=for-the-badge) ![LiteLLM](https://img.shields.io/badge/LiteLLM-black?style=for-the-badge) ![Docker](https://img.shields.io/badge/Docker-black?style=for-the-badge) ![Ruff](https://img.shields.io/badge/Ruff-black?style=for-the-badge) ![MyPy](https://img.shields.io/badge/MyPy-black?style=for-the-badge) ![LlamaIndex](https://img.shields.io/badge/LlamaIndex-black?style=for-the-badge) ![React](https://img.shields.io/badge/React-black?style=for-the-badge)

The selection of these technologies is ongoing, and additional technologies may be added or existing ones removed as the project evolves. We aim to adopt suitable and efficient tools to enhance OpenDevin's capabilities.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

## License

Distributed under the MIT License. See [`LICENSE`](./LICENSE) for details.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>

[contributors-shield]: https://img.shields.io/github/contributors/open-devin/opendevin?style=for-the-badge
[contributors-url]: https://github.com/open-devin/opendevin/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/open-devin/opendevin?style=for-the-badge
[forks-url]: https://github.com/open-devin/opendevin/network/members
[stars-shield]: https://img.shields.io/github/stars/open-devin/opendevin?style=for-the-badge
[stars-url]: https://github.com/open-devin/opendevin/stargazers
[issues-shield]: https://img.shields.io/github/issues/open-devin/opendevin?style=for-the-badge
[issues-url]: https://github.com/open-devin/opendevin/issues
[license-shield]: https://img.shields.io/github/license/open-devin/opendevin?style=for-the-badge
[license-url]: https://github.com/open-devin/opendevin/blob/main/LICENSE
