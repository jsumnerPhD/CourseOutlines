% Reimplementation of courseoutline class by Norman Gall (U. of Calgary)
% HEADER
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{dawsoncourseoutline}[2010/02/04 v.beta Physics Department]
\RequirePackage{ifthen}
\RequirePackage{url}
\RequirePackage{tabulary}
\RequirePackage{graphicx}
%\RequirePackage{dingbat}
%\RequirePackage{bbding}
\PassOptionsToClass{letterpaper,oneside,onecolumn}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{draft}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{enumitem}
\RequirePackage[svgnames]{xcolor}

% MINIMAL CLASS DEFINITION REQUIREMENTS
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{7.5in}
\setlength{\textheight}{9.25in}

% Set Dawson Logo
\def\LOGO{%
\begin{picture}(0,0)\unitlength=1cm
\put (-10.9,0) {\includegraphics[width=0.25\textwidth]{./dawson}}
\end{picture}
}

% DEFINITIONS
% NB: @ indicates an 'internal' variable
\def\college#1{\gdef\@college{#1}}
\def\department#1{\gdef\@department{#1}}
\def\program#1{\gdef\@program{#1}}
\def\coursename#1{\gdef\@coursename{#1}}
\def\coursenumber#1{\gdef\@coursenumber{#1}}
\def\session#1{\gdef\@session{#1}}
\def\ponderation#1{\gdef\@ponderation{#1}}
\def\texts#1{\gdef\@texts{#1}}
\def\@ifdefined#1#2{\@ifundefined{#1}{}{#2}}
\def\entrysep{1in}
\newlength{\entrywidth}
\addtolength{\entrywidth}{\textwidth}
\addtolength{\entrywidth}{-\entrysep}
\addtolength{\entrywidth}{-1em}

% COMMANDS
\setlength {\oddsidemargin}{-0.5in}
\setlength {\topmargin}{-0.5in}
\setlength {\footnotesep}{14pt} % baseline skip for fn's 1st line
\setlength {\headheight}{0.2in} % make room for header
\setlength {\headsep}{0.2in}		% modest header separation
\setlength {\parskip}{10pt plus0pt minus10pt}			% set a paragraph skip
\setlength {\parindent}{0in}	% no paragrpah indents
\setitemize{noitemsep}
\setenumerate{noitemsep}
\setdescription{noitemsep}
\setitemize{nolistsep}
\setenumerate{nolistsep}
\setdescription{nolistsep}

\renewcommand\maketitle{
	\begin{center}
		{\Large \MakeUppercase{\bf\@department}}\LOGO\\\smallskip
		{\Large {\bf\@program}}\\\smallskip
		{\Large {\bf\@coursename}}\\\smallskip
		{\large {\@coursenumber}}\\
		{\large {\@session}}\\
	\end{center}

  \rmfamily\hrule\smallskip
  }

\newcommand\entry[2]{%
	\parbox[t]{\entrysep}{\raggedright\bf#1}\hskip 1em\begin{minipage}[t]{\entrywidth}{\normalfont#2}\end{minipage}}

\newcommand\row[3]{%
#1 & #2\% & #3\%
}
	
\newcommand\onescheme[2]{%
#1 & #2\%
}
	
\newcommand\detailedevaluation[5]{%
	\parbox[t]{\entrysep}{\mbox{}}\hskip 1em\parbox[t]{\entrywidth}{
	\begin{tabular}{p{0.4\textwidth} p{0.07\textwidth} p{0.07\textwidth}}
		#1\\
		#2\\
		#3\\
		#4\\
		#5
	\end{tabular}\\

$^\dag$\small Your teacher will provide a tentative test schedule during the first week of class.\\\vspace{-0.5em}}}

\newcommand\evaluationfour[4]{%
	\parbox[t]{\entrysep}{\mbox{}}\hskip 1em\parbox[t]{\entrywidth}{
	\begin{tabular}{p{0.4\textwidth} p{0.07\textwidth} p{0.07\textwidth}}
		#1\\
		#2\\
		#3\\
		#4
	\end{tabular}\\

$^\dag$\small Your teacher will provide a tentative test schedule during the first week of class.\\\vspace{-0.5em}}}

\newcommand\evaluation[3]{%
	\parbox[t]{\entrysep}{\mbox{}}\hskip 1em\parbox[t]{\entrywidth}{
	\begin{tabular}{p{0.4\textwidth} p{0.07\textwidth} p{0.07\textwidth}}
		#1\\
		#2\\
		#3
	\end{tabular}\\

$^\dag$\small Your teacher will provide a detailed breakdown of these components and a tentative test schedule during the first week of class.\\\vspace{-0.5em}}}

\newcommand\notestevaluation[3]{%
	\parbox[t]{\entrysep}{\mbox{}}\hskip 1em\parbox[t]{\entrywidth}{
	\begin{tabular}{p{0.4\textwidth} p{0.07\textwidth} p{0.07\textwidth}}
		#1\\
		#2\\
		#3
	\end{tabular}\\

$^\dag$\small Your teacher will provide a detailed breakdown of these components during the first week of class.\\\vspace{-0.5em}}}

% Faculty contact info
\newcommand\conted{ (Cont'Ed)}

\newcommand\bassaf{\item [Basim Assaf] 7A.14, local 4011, \url{physicsone@gmail.com}}

\newcommand\mbaryliuk{\item [Michelle Baryliuk] 7A.24, local 4022, \url{mraimbert@dawsoncollege.qc.ca}}

\newcommand\sbhatnagar{\item [Sameer Bhatnagar] 7A.14, local 4010, \url{sbhatnagar@dawsoncollege.qc.ca}}

\newcommand\nboukhira{\item [Nadim Boukhira] 7A.20, local 4018, \url{nboukhira@dawsoncollege.qc.ca}}

\newcommand\jfbriere{\item [Jean-Fran\c cois Bri\`ere] 7A.16, local 4013, \url{jfbriere@dawsoncollege.qc.ca}}

\newcommand\rdib{\item [Rim Dib] 7B.19, local 4153, \url{rdib@place.dawsoncollege.qc.ca}}

\newcommand\mdikeakos{\item [Maria Dikeakos] 7A.10, local 4009, \url{mdikeakos@dawsoncollege.qc.ca}}

\newcommand\pduarte{\item [Paul Duarte] 7A.18, local 4015, \url{pduarte@dawsoncollege.qc.ca}}

\newcommand\vfeshchenko{\item [Vladimir Feshchenko] 7A.8, local 4025, \url{vfeshchenko@dawsoncollege.qc.ca}}

\newcommand\dglennie{\item [Diana Glennie] 7A.18, local 4076, \url{dglennie@dawsoncollege.qc.ca}}

\newcommand\niko{\item [Nikolaos Gryspolakis] 7B.19, local 4155, \url{ngryspolakis@dawsoncollege.qc.ca}}

\newcommand\khaile{\item [Kibreab Haile] 7B.21, local 4028, \url{khaile@dawsoncollege.qc.ca}}

\newcommand\sujeewa{\item [Sujeewa Kumaratunga] 7A.16, local 4075, \url{skumaratunga@dawsoncollege.qc.ca}}

\newcommand\plagogiannis{\item [Philip Lagogiannis] 7A.14, local 4074, \url{plagogiannis@dawsoncollege.qc.ca}}

\newcommand\jli{\item [Jing Li] 7A.24, local 4014, \url{jli@dawsoncollege.qc.ca}}

\newcommand\vmuntean{\item [Virgil Muntean] 7A.8, local 4026, \url{vmuntean@dawsoncollege.qc.ca}}

\newcommand\hnadeau{\item [H\'el\`ene Nadeau] 7A.22, local 4021, \url{hnadeau@dawsoncollege.qc.ca}}

\newcommand\jnaidj{\item [Jamileh Naidj] 7B.19, local 4154, \url{jnaidj@dawsoncollege.qc.ca}}

\newcommand\apronine{\item [Alex Pronine] 7A.24, local 4029, \url{pro9physics@gmail.com}}

\newcommand\srastikerdar{\item [Samad Rastikerdar] 7A.22, local 4020, \url{srastikerdar@dawsoncollege.qc.ca}}

\newcommand\croderick{\item [Chris Roderick] 7A.10, local 4008, \url{croderick@dawsoncollege.qc.ca}}

\newcommand\jsandoval{\item [Jaime Sandoval] 7A.18, local 4016, \url{jsandoval@dawsoncollege.qc.ca}}

\newcommand\psimpson{\item [Peggy Simpson] 7B.21, local 4027, \url{psimpson@dawsoncollege.qc.ca}}

\newcommand\astewart{\item [Andrew Stewart] 7A.24, local 4024, \url{anstewart@dawsoncollege.qc.ca}}

\newcommand\jsumner{\item [Jonathon Sumner] 7A.16, local 4012, \url{jsumner@dawsoncollege.qc.ca}}

\newcommand\mtoharia{\item [Manuel Toharia] 7B.21, local 4017, \url{mtoharia@dawsoncollege.qc.ca}}

\newcommand\jtrudeau{\item [Joel Trudeau] 7A.20, local 4019, \url{jtrudeau@dawsoncollege.qc.ca}}

\newcommand\cwhittaker{\item [Chris Whittaker] 7A.24, local 4023, \url{cwhittaker@dawsoncollege.qc.ca} or Mio}

\newcommand\dplouffe{\item [Dany Plouffe] 7A.24, local 4023, \url{dplouffe@dawsoncollege.qc.ca}}

\newcommand\clamela{\item [Cecilia La Mela] 7A10, \url{clamela@dawsoncollege.qc.ca}}



% LIMBES 
\newcommand\aabrassart{\item [Arnaud Abrassart] 7A.16, local 1755, \url{aabrassart@dawsoncollege.qc.ca}}



