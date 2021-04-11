#!/bin/bash
# Ask the user for their name
echo "Hello, what is the name of the Component?"
read component

echo "👉 creating a folder called: $component"
mkdir $component
echo "✅ done"

echo "👉 creating a Component called: $component"
# cp CompOne/CompOne.tsx $component/$component.tsx
# sed "s/CompOne/$component/g" "$component/$component.tsx" >> "$component/$component.tsx"
sed "s/CompOne/$component/g" CompOne/CompOne.tsx >> "$component/$component.tsx"
echo "✅ done"

echo "👉 creating a CSS called: $component"
# cp CompOne/CompOne.css $component/$component.css
# sed "s/CompOne/$component/g" "$component/$component.css" >> "$component/$component.css"
sed "s/CompOne/$component/g" CompOne/CompOne.css >> "$component/$component.css"
echo "✅ done"

echo "👉 creating a Story called: $component"
# cp CompOne/CompOne.stories.tsx $component/$component.stories.tsx
# sed "s/CompOne/$component/g" "$component/$component.stories.tsx" >> "$component/$component.stories.tsx"
sed "s/CompOne/$component/g" CompOne/CompOne.stories.tsx >> "$component/$component.stories.tsx"
echo "✅ done"

echo "👉 creating a Test called: $component"
# cp CompOne/CompOne.test.tsx $component/$component.test.tsx
# sed "s/CompOne/$component/g" "$component/$component.test.tsx" >> "$component/$component.test.tsx"
sed "s/CompOne/$component/g" CompOne/CompOne.test.tsx >> "$component/$component.test.tsx"
echo "✅ done"

echo "👉 creating a barrel file"
# cp CompOne/index.tsx $component/index.tsx
# sed "s/CompOne/$component/g" "$component/index.tsx" >> "$component/index.tsx"
sed "s/CompOne/$component/g" CompOne/index.tsx >> "$component/index.tsx"
echo "✅ done"
