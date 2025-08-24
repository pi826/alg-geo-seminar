% myjbook.cls
% pLaTeX用のカスタムクラスファイル

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[2024/07/26 Custom Book Class]

% ベースとなるクラスを読み込む
\LoadClass[a4paper, 10pt, oneside]{jbook}

% --- パッケージの読み込み ---
\RequirePackage{amsmath,amssymb,amsthm} % 数式、定理環境用
\RequirePackage[top=20mm, bottom=25mm, left=20mm, right=20mm]{geometry} % 余白設定
\RequirePackage{fancyhdr} % ヘッダー・フッターのカスタマイズ

% --- ヘッダー・フッター設定 ---
\pagestyle{fancy}
\fancyhf{} % ヘッダーとフッターをクリア
% ヘッダー左にセクション番号とセクション名
% \nouppercaseで大文字になるのを防ぐ
% \leftmarkは通常\chapter名、\rightmarkは\section名を出力するが、jbookでは\leftmarkがセクション名になる
\fancyhead[L]{\nouppercase{\leftmark}}
% フッター中央にページ番号
\fancyfoot[C]{\thepage}
% ヘッダーに罫線を引く
\renewcommand{\headrulewidth}{0.4pt}
% フッターの罫線はなし
\renewcommand{\footrulewidth}{0pt}

% --- 定理環境の定義 ---
% ご要望に応じて、シンプルなスタイルで定義します。

% 定義 (Definition) 環境
% 独自の通し番号を持ち、セクションごとにリセットされる
\theoremstyle{definition}
\newtheorem{definition}{定義}[section]

% 定理、補題、命題、注意 環境
% definition環境の通し番号を共有する
\theoremstyle{plain}
\newtheorem{theorem}[definition]{定理}
\newtheorem{lemma}[definition]{補題}
\newtheorem{proposition}[definition]{命題}

\theoremstyle{remark}
\newtheorem{remark}[definition]{注意}

% --- 証明環境 ---
% amsthm標準の証明環境を使用
% \begin{proof} ... \end{proof}
% 証明の終わりに四角マーク(Q.E.D.)が自動で入る

\endinput
