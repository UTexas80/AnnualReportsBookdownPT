# https://tinyurl.com/y7cmmep5
grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica]
  A; B; C; D; E; F

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
  1; 2; 3; 4; 5; 6; 7; 8

  # several 'edge' statements
  A->1 B->2 B->3 B->4 C->A
  1->D E->A 2->4 1->5 1->F
  E->6 4->6 5->7 6->7 3->8
}
")

mermaid("
graph TB
  A-->B
  A-->C
  C-->E
  B-->D
  C-->D
  D-->F
  E-->F
")

mermaid("
graph LR
A(Rounded)-->B[Rectangular]
B-->C{A Rhombus}
C-->D[Rectangle One]
C-->E[Rectangle Two]
")


mermaid("graph LR; A-->B; A-->C; C-->E; B-->D; C-->D; D-->F; E-->F")

mermaid("
graph LR
  A-->B
  A-->C
  C-->E
  B-->D
  C-->D
  D-->F
  E-->F
")


# https://tinyurl.com/yc6p8o3t
grViz("digraph a_nice_graph {
        
        # node definitions with substituted label text
        node [fontname = Helvetica, shape = rectangle]        
        rec1 [label = '@@1']
        rec2 [label = '@@2']
        rec3 [label = '@@5']

        node [fontname = Helvetica, shape = oval]
        ova1 [label = '@@3']
        ova2 [label = '@@4']

        # edge definitions with the node IDs
        rec1 -> ova1 -> rec2 -> ova2 -> rec3
        }
      
        [1]: 'raw data'
        [2]: 'cleaned data'
        [3]: 'clean and tidy'
        [4]: 'describe'
        [5]: 'report'
      ")

# A minimal plot - https://tinyurl.com/y93pypnl
DiagrammeR::grViz("digraph {
  
graph[layout = dot, rankdir = LR]

a
b
c

a -> b -> c
}")



# DiagrammerR Github https://tinyurl.com/yb9qs5vt