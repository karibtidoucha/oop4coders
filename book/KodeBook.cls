%
%    Copyright (C) 2017  Abdelkrime Aries <kariminfo0@gmail.com>
%
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e} %[2009/09/24]
\ProvidesClass{KodeBook}[2017/08/17 Create a book with codes]
\LoadClass[11pt]{book}

%\RequirePackage[utf8]{inputenc}
%\RequirePackage[arabic,french,english]{babel}
%\RequirePackage{CJKutf8}

\RequirePackage{multirow}
\RequirePackage{array}

\RequirePackage{tikz}
\RequirePackage{environ}
%\RequirePackage{cmap}
%\RequirePackage{ruby}
\RequirePackage{xstring}

\RequirePackage{fancyhdr} 

%\RequirePackage{verbatim} 


\if@compatibility\else

\DeclareOption{a4paper}{%
\setlength{\paperheight}{297mm}%
\setlength{\paperwidth}{210mm}%
}


%when the user use a not existing option
\DeclareOption*{%
}

\fi

\ProcessOptions\relax

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}
\pagenumbering{arabic} % needed even though this class will not show page numbers


\RequirePackage[left=2.5cm,right=1.5 cm,top=2.2 cm,bottom=2 cm,headheight=2cm]{geometry}


% Chapter counter
%\newcounter {chapcount}
%\setcounter{chapcount}{0}
%
%
\def\@chapter[#1]#2{

\cleardoublepage
\thispagestyle{plain}

\refstepcounter{chapter}

\addcontentsline{toc}{chapter}%
{\protect\numberline{\thechapter}#1}

\noindent
\begin{tikzpicture}

\node[anchor=north west,minimum width=\textwidth,minimum height=2cm,fill=blue] (RB) at (current page.north west){
\begin{minipage}[t!]{14cm}
\begin{center}
\huge\bfseries\textcolor{yellow}{#1}
\end{center}
\end{minipage}	
};

\node[anchor=north west,minimum width=3cm,minimum height=1.5cm,fill=yellow] at ([shift={(0.5cm,1.75cm)}] RB.south west){
	\begin{minipage}[t!]{3cm}
	\begin{center}
	\huge\bfseries\textcolor{blue}{\Roman{chapter}}
	\end{center}
	\end{minipage}
};

\end{tikzpicture}

}


\def\@schapter#1 {
	\cleardoublepage
	\thispagestyle{plain}
	\noindent
	\begin{tikzpicture}
	
	\node[anchor=north west,minimum width=\textwidth,minimum height=2cm,fill=blue] (RB) at (current page.north west){
		\begin{minipage}[t!]{14cm}
		\begin{center}
		\huge\bfseries #1
		\end{center}
		\end{minipage}	
	};
	
	\end{tikzpicture}
}