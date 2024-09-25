%%%
%% honka.cls (pLaTeX2e) ver-0.1.2
%%  奈良工業高等専門学校 情報工学科 卒業研究報告書
%%    by Hiroshi IWATA , 2011-, 
%%    (Nara National College of Technology, Department of Information Engineering)
%% E-mail: iwata@info.nara-k.ac.jp

\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{honka}
\LoadClassWithOptions{jarticle}
%\usepackage{jumoline}
\usepackage[dvips]{graphicx}


%--- 細かいのを調整
\setlength{\footskip}{2\Cvs}
\setlength{\parindent}{1zw}				% 段落の字下げ幅 全角一文字
\renewcommand{\baselinestretch}{1.10}

%--- 横マージンの設定 1インチ=25.4mm
\setlength{\oddsidemargin}{25truemm}	% 左マージン
\addtolength{\oddsidemargin}{-1truein}	%
%\setlength{\evensidemargin}{0pt}		% jsarticleでは設定不要
%\addtolength{\evensidemargin}{-1truein}%
%\setlength{\hoffset}{0pt}				% hoffsetはデフォルトで0
%\setlength{\textwidth}{140truemm}		% 右マージン : 35mm = 210 - 35(左マージン) - 140
\setlength{\textwidth}{35zw}			% ↑みたいにしてもいいけど，文字ポイント変えないなら普通は全角文字数指定する

%--- 縦マージンの設定
\setlength{\topmargin}{25truemm}		% 上マージン
\addtolength{\topmargin}{-1truein}		%
%\setlength{\voffset}{0pt}				% voffsetはデフォルトで0
\setlength{\headheight}{0pt}			% ヘッダーの高さ
\setlength{\headsep}{0pt}				% ヘッダーと本文の間隔
%\setlength{\textheight}{247truemm}		% 下マージン : 30mm = 297 - 20(上マージン) - 247
\setlength{\textheight}{37\baselineskip}% 37行 jsclassでは\Cvs，jclassでは\baselineskip
\addtolength{\textheight}{\topskip}		%
% 
\font\minni=min10 at 36pt
\font\cmrni=cmr10 at 36pt
\def\BIG{\minni\cmrni}


%--- 変数設定
\def\yearstr{99}
\newcommand{\nendo}[1]{
	\def\yearstr{#1}
}
\def\titlestr{タイトルを書くべし}
\renewcommand{\title}[1]{
	\def\titlestr{#1}
}
\def\authorstr{自分のの名前}
\renewcommand{\author}[1]{
	\def\authorstr{#1}
}
\def\bossstr{ボスの名前}
\newcommand{\boss}[1]{
	\def\bossstr{#1}
}
\def\sbossstr{アドバイザーの名前}
\newcommand{\sboss}[1]{
	\def\sbossstr{#1}
}
\def\datestr{平成99年2月30日}
\renewcommand{\date}[1]{
	\def\datestr{#1}
}

%
% pagestyle
%
%\typeout{pagestyle}
\def\yes{1}
%
% for final
%
\def\ps@final{
\def\isfinal{1}
\def\@evenhead{}%
\def\@oddhead{}%
\def\@oddfoot{\hfill\thepage\hfill}%
\def\@evenfoot{\hfill\thepage\hfill}%
}
%
% drafts
%
\def\ps@draft{
\def\isfinal{0}
\def\draftstr{{\jpntoday, \curtime: \authorstr}}
\def\draftfoot{%
        {{\sf \draftstr}\hfill{\sf \thepage}}%
}
\def\@evenhead{}%
\def\@oddhead{}%
\def\@oddfoot{{\draftfoot}}%
\def\@evenfoot{{\draftfoot}}%
}

%\typeout{titlepage}
\renewcommand{\titlepage}{
	\thispagestyle{empty}
	\if\isfinal\yes
		\begin{center}
			\begin{figure}[tb]
			\begin{center}
			\resizebox{2cm}{!}{\includegraphics{images/kousyou.png}}
			\end{center}
			\end{figure}
			\rule{\textwidth}{0.1mm}
			\vskip 1em
			\bf\BIG \makebox[.95\textwidth][s]{卒業研究報告書}
		\end{center}
		\begin{flushright}
			{\LARGE 令和\yearstr 年度}
		\end{flushright}
		\begin{center}
			\vskip -1em
			\rule{\textwidth}{0.1mm}
		\end{center}
		{\Large 研究題目}
		\begin{center}
			{\Large \titlestr}
%			\vskip -1em
			\rule{\textwidth}{0.1mm}
		\end{center}
		\vskip 5em
		{\Large{\bf \makebox[4zw][s]{指導教員}} 　　　　\bossstr}
		\begin{center}
			\vskip -2em
			\rule{\textwidth}{0.1mm}
		\end{center}
		\vskip 1em
		{\Large{\bf \makebox[4zw][s]{アドバイザー}} 　　　　\sbossstr}
		\begin{center}
			\vskip -2em
			\rule{\textwidth}{0.1mm}
		\end{center}
		\vskip 1em
		{\Large{\bf \makebox[4zw][s]{氏名}} 　　　　\authorstr}
		\begin{center}
			\vskip -2em
			\rule{\textwidth}{0.1mm}
			\vskip 2em
			{\Large \datestr 提出}
			\vspace*{\fill}
			\makebox[.95\textwidth][s]{\bf\Large 奈良工業高等専門学校　情報工学科}
%			{\bf\Large 奈良工業高等専門学校　情報工学科}
		\end{center}
		\newpage
	\else
			\vspace*{\fill}
			\begin{center}
					{\Huge\bf DRAFT}
			\end{center}
			\vspace*{1cm}
			\begin{center}
%						\Large\bf\titlestr
			\end{center}
			\vspace*{1cm}
			\begin{center}
%						{\Large \authorstr}
			\end{center}
			\vspace*{1cm}
			\begin{center}
%						{\Large\bf \today}
			\end{center}
			\begin{center}
%						{\Large\bf \curtime}
			\end{center}
			\vspace*{\fill}
	\fi
}
\renewcommand\abstract{
	\setcounter{page}{1}
	\pagenumbering {roman}
	\vspace{2.5zw}
	\begin{center}
		{\Large\gtfamily 要約}
	\end{center}
	\vspace{15pt}
	\par
}
\renewcommand{\tableofcontents}{%
  \newpage%
  \section*{\contentsname
    \@mkboth{\contentsname}{\contentsname}%
  }\@starttoc{toc}%
  \newpage%
}
\renewcommand{\listoffigures}{%
    \section*{\listfigurename
  \@mkboth{\listfigurename}{\listfigurename}}%
  \@starttoc{lof}%
  \newpage%
}
\renewcommand{\listoftables}{%
    \section*{\listtablename
  \@mkboth{\listtablename}{\listtablename}}%
  \@starttoc{lot}%
  \newpage%
}


\newcommand\start{
\setcounter{page}{1}
\pagenumbering {arabic}
}

%%定義終わりの黒四角
\newcommand\block{
\hfill\rule[-2pt]{10pt}{10pt}
}

%%タイトルの関連書籍を参考文献に変える＆目次に出力
\renewenvironment{thebibliography}[1]
{\newpage\section*{\addcontentsline{toc}{section}{参考文献}%
   \refname\@mkboth{\refname}{\refname}}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}

%%謝辞コマンドの作成
\newcommand\wordsofthanks{
\newpage
\section*{\addcontentsline{toc}{section}{謝辞}謝辞}
}