\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{yokou}
\LoadClassWithOptions{jsarticle}

%--- 横マージンの設定 1インチ=25.4mm
\setlength{\oddsidemargin}{20truemm}	% 左マージン : 20mm = 25.4 - 5.4
\addtolength{\oddsidemargin}{-1truein}	%
%\setlength{\evensidemargin}{0pt}		% jsarticleでは設定不要
%\setlength{\hoffset}{0pt}				% hoffsetはデフォルトで0
\setlength{\textwidth}{170truemm}		% 右マージン : 20mm = 210 - 20(左マージン) - 170

%--- 縦マージンの設定
\setlength{\topmargin}{20truemm}		% 上マージン : 20mm = 25.4 - 5.4
\addtolength{\topmargin}{-1truein}		%
%\setlength{\voffset}{0pt}				% voffsetはデフォルトで0
\setlength{\headheight}{0pt}			% ヘッダーの高さ
\setlength{\headsep}{0pt}				% ヘッダーと本文の間隔
\setlength{\textheight}{257truemm}		% 下マージン : 30mm = 297 - 20(上マージン) - 247

\setlength{\footskip}{0pt}
\setlength{\parindent}{1zw}				% 段落の字下げ幅 全角一文字


%--- 変数設定
\def\group#1{\gdef\@group{#1}}
%\def\date#1{\gdef\@date{#1}}


%--- maketitle
\renewcommand\maketitle{
	\twocolumn[%
%		\begin{flushright}%
%			{\footnotesize \@date \par }%
%		\end{flushright}\par
%		\vspace{-7mm}	%
		\begin{center}%
			{\Large\bf{ \@title }  \par}%
			\@group \hspace{1em} \@author  \par	%
		\end{center}\par
	]%
\pagestyle{empty}
\baselineskip 1.6zw
}


%--- itemize環境
\renewenvironment{itemize}%  
{%
	\begin{list}{\parbox{1zw}{$\bullet$}}	% 見出し記号／直後の空白を調節
	{%
		\setlength{\topsep}{0zh}
		\setlength{\itemindent}{0zw}
		\setlength{\leftmargin}{2zw}		% 左のインデント
		\setlength{\rightmargin}{0zw}	% 右のインデント
		\setlength{\labelsep}{0pt}			% 黒丸と説明文の間
%		\setlength{\labelwidth}{3zw}		% ラベルの幅
		\setlength{\itemsep}{0em}		% 項目ごとの改行幅
		\setlength{\parsep}{0em}			% 段落での改行幅
		\setlength{\listparindent}{0zw}	% 段落での一字下り
	}
}{%
	\end{list}%
}




%-- sectionの再定義
\renewcommand{\section}{\@startsection{section}{1}{\z@}% indent
	{0.2\Cvs \@plus.05\Cdp \@minus.1\Cdp}%	beforeskip
	{0.1\Cvs \@plus.05\Cdp}% 				afterskip
	{\reset@font\Large\bfseries}%			style
}
\renewcommand{\subsection}{\@startsection{subsection}{1}{\z@}%
	{0.2\Cvs \@plus.05\Cdp \@minus.05\Cdp}%
	{0.01\Cvs \@plus.05\Cdp}%
	{\reset@font\large\bfseries}
}



%%定義終わりの黒四角
\newcommand\block{
	\hfill\rule[-2pt]{5pt}{5pt}
}

