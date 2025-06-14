import { Game } from '../../components/Game'
import styled from 'styled-components'

const GameContainer = styled.div`
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    vertical-align: middle;
`

export const GamePage = () => {
    return (
        <GameContainer>
            <Game />
        </GameContainer>
    )
}