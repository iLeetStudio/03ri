class onlyMedicalSity {
    constructor() {

    }

    insertImagePersonnel() {
        for(var i = 0; i < 9; i++) {
            $('.img'+(i+1)).css({'background': 'url(templates/Default/img/personal/'+(i+2)+'.jpg) no-repeat', 'background-size':'cover'});
        }
    }

    insertImageRequisites() {
        for(var i = 0; i < 6; i++) {
            $('.wrapperLisenses').append('<a href="templates/Default/img/requisites/'+(i+1)+'.jpg"></a>');
            $('[href = "templates/Default/img/requisites/'+(i+1)+'.jpg"]').append('<div class = "lisens lisens'+(i+1)+'"></div>');
            $('.lisens'+(i+1)).css({'background':'url(templates/Default/img/requisites/'+(i+1)+'.jpg) no-repeat', 'background-size':'cover'});
        }
    }

    collectStructure() {
        var svg = d3.select('.wrapper-svg')
            .append('svg')
            .attr('width', '100%')
            .attr('height', '100%');                
            
        svg.append('rect')
            .attr('x', 304.547)
            .attr('y', 20)
            .attr('rx', 10);

        svg.append('text')
            .text('ГБУ "РССМП"')
            .attr('x', 364.547)
            .attr('y', 60);

        svg.append('text')
            .classed('address', true)
            .text('Адрес: г. Назрань а/о Насыр-Корт')
            .attr('x', 339.547)
            .attr('y', 75);

        svg.append('text')
            .classed('address', true)
            .text('улица Бакинская 7а')
            .attr('x', 369.547)
            .attr('y', 90);

        svg.append('text')
            .classed('address', true)
            .text('03 030 22-72-25')
            .attr('x', 384.547)
            .attr('y', 105);
            
        svg.append('text')
            .classed('address', true)
            .text('22-24-10')
            .attr('x', 404.547)
            .attr('y', 120);

        for(var i = 0; i < 3; i++) {
            svg.append('rect')
                .classed('substation', true)
                .attr('x', 300*i+5)
                .attr('y', 400 / 2 + 40)
                .attr('rx', 10)
        }

        this.arrow(svg, 330, 40, 'leftArrow');
        this.arrow(svg, 425, 235);
        this.arrow(svg, 380, 535, 'rightArrow');

//Заголовок трез блоков подстанций ------------------------------------------
        svg.append('text')
            .text('Подстанция с. Кантышево')
            .style('font-size', '19')
            .attr('x', 9)
            .attr('y', 280);

        svg.append('text')
            .text('Подстанция с. Сурхахи')
            .style('font-size', '19')
            .attr('x', 322)
            .attr('y', 280);

        svg.append('text')
            .text('Подстанция с. Яндаре')
            .style('font-size', '19')
            .attr('x', 625)
            .attr('y', 280);

//Адрес трех блоков подстанций --------------------------------------------
        svg.append('text')
            .classed('address', true)
            .text('Адрес: с. Кантышево, ул. Шерипова, 25')
            .attr('x', 15)
            .attr('y', 295);
            
        svg.append('text')
            .classed('address', true)
            .text('тел.: 8-928-728-01-03')
            .attr('x', 65)
            .attr('y', 310);

        svg.append('text')
            .classed('address', true)
            .text('Адрес: с. Сурхахи, ул. Аушева, 26')
            .attr('x', 332)
            .attr('y', 295);

        svg.append('text')
            .classed('address', true)
            .text('тел.: 8-928-747-50-84')
            .attr('x', 365)
            .attr('y', 310);

        svg.append('text')
            .classed('address', true)
            .text('Адрес: с. Яндаре, ул. Мальсагова, 56')
            .attr('x', 622)
            .attr('y', 295);

        svg.append('text')
            .classed('address', true)
            .text('тел.: 8-964-644-09-38')
            .attr('x', 665)
            .attr('y', 310);
    }
	
    arrow(svg, x, y, className = 'normal') {
        svg.append('polygon')
            .classed(className, true)
            .attr('points', ''+x+','+y+' '+(x+40)+','+(y-20)+' '+(x+20)+','+(y-20)+' '+(x+25)+','+(y-60)+' '+(x-25)+','+(y-60)+' '+(x-20)+','+(y-20)+' '+(x-40)+','+(y-20)+'')
    }
}


$('document').ready(function() {
	var sity = new onlyMedicalSity();
	
    sity.insertImagePersonnel();

    sity.insertImageRequisites();

    sity.collectStructure();
});