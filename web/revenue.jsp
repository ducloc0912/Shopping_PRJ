
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revenue</title>
    </head>
    <body>
        <a type="button" class="btn btn-primary" href="HomeController" style="margin-bottom: 3rem; margin-left: 10rem; margin-top: 2rem;">Back to Home</a>
        <h1>Revenue of ebay Store</h1>
        <div class="simple-bar-chart">

            
            <c:forEach var="c" items="${r}">
                <div class="item" style="--clr: #5EB344; --val: ${c.total}">
                <div class="label">${c.orderDate}</div>
                <div class="value">${c.total} $</div>
            </div>
            </c:forEach>
            

       
        </div>

    </body>
    <style>
        .simple-bar-chart{
            --line-count: 10;
            --line-color: currentcolor;
            --line-opacity: 0.25;
            --item-gap: 2%;
            --item-default-color: #060606;

            height: 10rem;
            display: grid;
            grid-auto-flow: column;
            gap: var(--item-gap);
            align-items: end;
            padding-inline: var(--item-gap);
            --padding-block: 1.5rem; /*space for labels*/
            padding-block: var(--padding-block);
            position: relative;
            isolation: isolate;
        }

        .simple-bar-chart::after{
            content: "";
            position: absolute;
            inset: var(--padding-block) 0;
            z-index: -1;
            --line-width: 1px;
            --line-spacing: calc(100% / var(--line-count));
            background-image: repeating-linear-gradient(to top, transparent 0 calc(var(--line-spacing) - var(--line-width)), var(--line-color) 0 var(--line-spacing));
            box-shadow: 0 var(--line-width) 0 var(--line-color);
            opacity: var(--line-opacity);
        }
        .simple-bar-chart > .item{
            height: calc(1% * var(--val));
            background-color: var(--clr, var(--item-default-color));
            position: relative;
            animation: item-height 1s ease forwards
        }
        @keyframes item-height {
            from {
                height: 0
            }
        }

        .simple-bar-chart > .item > * {
            position: absolute;
            text-align: center
        }
        .simple-bar-chart > .item > .label {
            inset: 100% 0 auto 0
        }
        .simple-bar-chart > .item > .value {
            inset: auto 0 100% 0
        }

        body {
            margin: 0;
            padding: 2rem;
            color: #1D1E22;
            background-color: #f0f0f0;
            font-family: system-ui, sans-serif;
            text-align: center;
        }

        @media (prefers-color-scheme: dark) {
            body {
                background-color: #1D1E22;
                color: #f0f0f0;
            }
        }

        body > * {
            max-width: 45rem;
            margin-inline: auto
        }
    </style>
</html>
