using Teams
using Documenter

DocMeta.setdocmeta!(Teams, :DocTestSetup, :(using Teams); recursive=true)

makedocs(;
    modules=[Teams],
    authors="Conrad Wiebe",
    repo="https://github.com/Cyrannosaurus/Teams.jl/blob/{commit}{path}#{line}",
    sitename="Teams.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Cyrannosaurus.github.io/Teams.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Cyrannosaurus/Teams.jl",
    devbranch="main",
)
