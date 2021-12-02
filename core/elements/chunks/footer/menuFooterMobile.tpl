<div id=#accordion>
    [[pdoMenu?
    &parents=`3,8,16`
    &level=`1`
    &displayStart=`1`
    &tplStart=`@INLINE  <div><div id="heading[[+id]]"><h4[[+classes]]><a data-toggle="collapse" href="#collapse[[+id]]"  role="button" aria-expanded="false" aria-controls="collapse[[+id]]">
         [[+menutitle]]
        </a></h4>
        </div>[[+wrapper]]`
    &tplParentRow=`123`
    &tplInner=`@INLINE <div id="collapse[[+id]]" class="collapse" aria-labelledby="heading[[+id]]" data-parent="#accordion">
    <ul>[[+wrapper]]</ul>
    </div>
    </div>`
    &tplOuter=`@INLINE [[+wrapper]]`
    ]]
</div>
