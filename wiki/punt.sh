RETROSPECTIVE_FILES=$(find . -type f -name "Sprint-Retrospective*.md")
PLANNING_FILE="Sprint-Planning.md"

echo "# Sprint Planning" > "$PLANNING_FILE"
for file in $RETROSPECTIVE_FILES; do
echo "- [$(basename "$file")]($(basename "$file" .md))" >> "$PLANNING_FILE"
done