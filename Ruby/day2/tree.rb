class Tree
    attr_accessor :children, :node_name

    def initialize(data)
        key, value = data.first

        @node_name = key
        @children = []

        parse(@children, value)
    end

    def parse(children, data)
        data.each do |key, value|
            children.push(Tree.new({ key => value }))
        end
    end

    def visit_all(&block)
        visit &block

        children.each do |child|
            child.visit_all(&block)
        end
    end

    def visit(&block)
        block.call self
    end
end

data = { 'grandpa' => {
    'dad' => {
        'child 1' => {
            'child 5' => {
                'child 6' => {}
            }
        },
        'child 2' => {}
    },
    'uncle' => {
        'child 3' => {},
        'child 4' => {}
    }
}}
ruby_tree = Tree.new(data)

puts 'Visiting a node'
ruby_tree.visit { |node| puts node.node_name }

puts 'Visiting entire tree'
ruby_tree.visit_all { |node| puts node.node_name }